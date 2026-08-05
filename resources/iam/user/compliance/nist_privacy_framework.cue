// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: user.#Resource & #PR_AC_P1 & #PR_AC_P1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#PR_AC_P1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#PR_AC_P1_2: {
	Properties: Policies: []
	...
}

