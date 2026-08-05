// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: user.#Resource & #9_1_1 & #9_1_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#9_1_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#9_1_1_2: {
	Properties: Policies: []
	...
}

