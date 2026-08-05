// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: instance.#Resource & #AC_1_001 & #AC_1_001_2 & #AC_1_001_3

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#AC_1_001: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#AC_1_001_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#AC_1_001_3: {
	Properties: SubnetId: [_, ...]
	...
}

