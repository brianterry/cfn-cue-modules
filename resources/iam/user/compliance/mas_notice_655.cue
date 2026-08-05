// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: user.#Resource & #4_1 & #4_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#4_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#4_1_2: {
	Properties: Policies: []
	...
}

