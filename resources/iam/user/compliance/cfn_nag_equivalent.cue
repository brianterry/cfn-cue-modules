// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: user.#Resource & #F10 & #F2000

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#F10: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_MISSING_GROUP_RULE
#F2000: {
	Type: "AWS::IAM::User"
	Properties: Groups: _ & !=_|_
	...
}

