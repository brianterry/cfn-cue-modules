// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: user.#Resource & #AC_2i_2 & #AC_2i_2_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#AC_2i_2: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#AC_2i_2_2: {
	Properties: Policies: []
	...
}

