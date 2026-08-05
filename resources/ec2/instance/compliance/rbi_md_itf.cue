// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: instance.#Resource & #ctrl_4_4_h & #ctrl_4_4_h_2 & #ctrl_8_I & #ctrl_3_1_c & #ctrl_8_I_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#ctrl_4_4_h: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#ctrl_4_4_h_2: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_8_I: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#ctrl_3_1_c: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_8_I_2: {
	Properties: SubnetId: [_, ...]
	...
}

