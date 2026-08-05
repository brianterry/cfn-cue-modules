// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ffiec & { ... }
#ffiec: filesystem.#Resource & #D3_PC_Am_B_12

// Guard rule: EFS_ENCRYPTED_CHECK
#D3_PC_Am_B_12: {
	Properties: Encrypted: true
	...
}

