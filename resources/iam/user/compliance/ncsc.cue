// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#ncsc & { ... }
#ncsc: user.#Resource & #10__Identity_and_authentication & #9__Secure_user_management

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#10__Identity_and_authentication: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#9__Secure_user_management: {
	Properties: Policies: []
	...
}

