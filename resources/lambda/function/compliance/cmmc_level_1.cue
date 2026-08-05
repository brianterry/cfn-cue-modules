// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: function.#Resource & #AC_1_001

// Guard rule: LAMBDA_INSIDE_VPC
#AC_1_001: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

