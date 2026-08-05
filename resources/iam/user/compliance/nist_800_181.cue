// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: user.#Resource & #T0144 & #T0144_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#T0144: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#T0144_2: {
	Properties: Policies: []
	...
}

