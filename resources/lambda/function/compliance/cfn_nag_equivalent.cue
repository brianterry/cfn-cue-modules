// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: function.#Resource & #W92 & #W89

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#W92: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#W89: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

