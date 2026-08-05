// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: user.#Resource & #ctrl_3_1_c & #ctrl_3_1_c_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_3_1_c: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_3_1_c_2: {
	Properties: Policies: []
	...
}

