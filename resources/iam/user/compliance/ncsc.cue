// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#ncsc & { ... }
#ncsc: user.#Resource & #ctrl_10__Identity_and_authentication & #ctrl_9__Secure_user_management

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_10__Identity_and_authentication: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_9__Secure_user_management: {
	Properties: Policies: []
	...
}

