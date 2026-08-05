// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: secret.#Resource & #SEC_2_4

// Guard rule: SECRETSMANAGER_USING_CMK
#SEC_2_4: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

