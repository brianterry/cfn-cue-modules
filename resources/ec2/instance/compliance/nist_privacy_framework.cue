// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: instance.#Resource & #PR_DS_P4 & #CT_DM_P8 & #PR_AC_P3 & #PR_AC_P1 & #PR_AC_P3_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#PR_DS_P4: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#CT_DM_P8: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#PR_AC_P3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#PR_AC_P1: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#PR_AC_P3_2: {
	Properties: SubnetId: [_, ...]
	...
}

