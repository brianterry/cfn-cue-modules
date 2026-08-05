// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: user.#Resource & #B2_a Identity Verification_ Authentication_and Authorisation & #C1_b Securing Logs

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#B2_a Identity Verification_ Authentication_and Authorisation: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#C1_b Securing Logs: {
	Properties: Policies: []
	...
}

