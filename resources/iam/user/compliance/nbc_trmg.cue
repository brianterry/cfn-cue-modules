// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: user.#Resource & #ctrl_3_1_1_h & #ctrl_3_1_1_h_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_3_1_1_h: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_3_1_1_h_2: {
	Properties: Policies: []
	...
}

