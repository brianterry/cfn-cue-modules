// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: user.#Resource & #AC_6 & #AC_2_j

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#AC_6: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#AC_2_j: {
	Properties: Policies: []
	...
}

