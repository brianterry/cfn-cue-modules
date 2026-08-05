// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: topic.#Resource & #SEC_8_3

// Guard rule: SNS_ENCRYPTED_KMS
#SEC_8_3: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

