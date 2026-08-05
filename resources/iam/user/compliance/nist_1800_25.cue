// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: user.#Resource & #PR_AC_1 & #PR_AC_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#PR_AC_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#PR_AC_1_2: {
	Properties: Policies: []
	...
}

