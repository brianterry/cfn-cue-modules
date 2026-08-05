// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: user.#Resource & #Your_Systems_3 & #Your_Systems_3_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#Your_Systems_3: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#Your_Systems_3_2: {
	Properties: Policies: []
	...
}

