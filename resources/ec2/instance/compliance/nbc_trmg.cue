// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: instance.#Resource & #3_2_1_h & #3_1_2_c & #3_1_1_d & #3_1_2_c_2

// Guard rule: EBS_OPTIMIZED_INSTANCE
#3_2_1_h: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#3_1_2_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#3_1_1_d: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#3_1_2_c_2: {
	Properties: SubnetId: [_, ...]
	...
}

