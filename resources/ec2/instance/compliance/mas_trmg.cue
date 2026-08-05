// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: instance.#Resource & #8_4_1 & #11_1_1__b & #9_1_1 & #11_1_1__b_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#8_4_1: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#11_1_1__b: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#9_1_1: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#11_1_1__b_2: {
	Properties: SubnetId: [_, ...]
	...
}

