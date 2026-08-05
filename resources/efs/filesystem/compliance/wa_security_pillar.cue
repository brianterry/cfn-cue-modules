// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: filesystem.#Resource & #SEC_8_3

// Guard rule: EFS_ENCRYPTED_CHECK
#SEC_8_3: {
	Properties: Encrypted: true
	...
}

