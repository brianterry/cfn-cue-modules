// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_csf & { ... }
#nist_csf: instance.#Resource & #DE_AE_1 & #PR_AC_3 & #PR_AC_1 & #PR_AC_3_2

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#DE_AE_1: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#PR_AC_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#PR_AC_1: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#PR_AC_3_2: {
	Properties: SubnetId: [_, ...]
	...
}

