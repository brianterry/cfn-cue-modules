// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: instance.#Resource & #3_13_2 & #3_1_1 & #3_1_1_2 & #3_1_1_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#3_13_2: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#3_1_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#3_1_1_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#3_1_1_3: {
	Properties: SubnetId: [_, ...]
	...
}

