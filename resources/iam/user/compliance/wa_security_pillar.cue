// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: user.#Resource & #SEC_2_3

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#SEC_2_3: {
	Properties: Policies: []
	...
}

