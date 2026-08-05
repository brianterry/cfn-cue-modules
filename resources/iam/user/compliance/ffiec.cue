// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#ffiec & { ... }
#ffiec: user.#Resource & #D3_PC_Am_B_1 & #D3_PC_Am_B_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#D3_PC_Am_B_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#D3_PC_Am_B_1_2: {
	Properties: Policies: []
	...
}

