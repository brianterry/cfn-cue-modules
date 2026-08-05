// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: user.#Resource & #AC_2_f & #AC_2_f_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#AC_2_f: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#AC_2_f_2: {
	Properties: Policies: []
	...
}

