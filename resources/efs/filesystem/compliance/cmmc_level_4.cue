// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: filesystem.#Resource & #IA_2_081

// Guard rule: EFS_ENCRYPTED_CHECK
#IA_2_081: {
	Properties: Encrypted: true
	...
}

