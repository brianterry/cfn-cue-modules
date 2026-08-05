// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: instance.#Resource & #ctrl_10_66_e & #ctrl_10_27 & #ctrl_10_53 & #ctrl_10_54 & #ctrl_10_53_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#ctrl_10_66_e: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#ctrl_10_27: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_10_53: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#ctrl_10_54: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_10_53_2: {
	Properties: SubnetId: [_, ...]
	...
}

