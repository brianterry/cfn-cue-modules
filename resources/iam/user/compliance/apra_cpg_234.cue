// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: user.#Resource & #ctrl_36c & #ctrl_36d

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#ctrl_36c: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#ctrl_36d: {
	Properties: Policies: []
	...
}

