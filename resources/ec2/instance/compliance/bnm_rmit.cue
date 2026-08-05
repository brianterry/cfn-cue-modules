// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: instance.#Resource & #10_66_e & #10_27 & #10_53 & #10_54 & #10_53_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#10_66_e: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#10_27: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#10_53: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#10_54: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#10_53_2: {
	Properties: SubnetId: [_, ...]
	...
}

