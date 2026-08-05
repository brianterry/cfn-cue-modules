// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: user.#Resource & #3_1_1 & #3_1_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#3_1_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#3_1_1_2: {
	Properties: Policies: []
	...
}

