// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: user.#Resource & #AC_2 & #AC_2_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#AC_2: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#AC_2_2: {
	Properties: Policies: []
	...
}

