// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: user.#Resource & #10_53 & #10_53_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#10_53: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#10_53_2: {
	Properties: Policies: []
	...
}

