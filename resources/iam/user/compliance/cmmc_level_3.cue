// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: user.#Resource & #AC_1_001 & #AC_1_001_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#AC_1_001: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#AC_1_001_2: {
	Properties: Policies: []
	...
}

