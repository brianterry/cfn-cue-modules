// cis-aws-benchmark-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #cis_aws_benchmark_level_2 enforces all cis-aws-benchmark-level-2 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cis_aws_benchmark_level_2 & { ... }
#cis_aws_benchmark_level_2: user.#Resource & #ctrl_1_15 & #ctrl_1_15_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_1_15: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_1_15_2: {
	Properties: Policies: []
	...
}

