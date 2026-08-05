// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: instance.#Resource & #PR_IP_4 & #PR_PT_1 & #PR_AC_3 & #PR_AC_1

// Guard rule: EBS_OPTIMIZED_INSTANCE
#PR_IP_4: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#PR_PT_1: {
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

