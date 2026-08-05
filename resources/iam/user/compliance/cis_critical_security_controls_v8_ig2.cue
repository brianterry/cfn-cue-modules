// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: user.#Resource & #3_3 & #3_3_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#3_3: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#3_3_2: {
	Properties: Policies: []
	...
}

