// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: user.#Resource & #164_308_a_3_i & #164_308_a_3_i_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#164_308_a_3_i: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#164_308_a_3_i_2: {
	Properties: Policies: []
	...
}

