// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: instance.#Resource & #SC_3_180 & #AC_1_001 & #AC_1_001_2 & #AC_1_001_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#SC_3_180: {
	Properties: EbsOptimized: true
	...
}

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

