// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: user.#Resource & #ctrl_500_02_b_2 & #ctrl_500_02_b_2_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_500_02_b_2: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_500_02_b_2_2: {
	Properties: Policies: []
	...
}

