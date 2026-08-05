// cmmc-level-5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #cmmc_level_5 enforces all cmmc-level-5 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#cmmc_level_5 & { ... }
#cmmc_level_5: key.#Resource & #SC_3_187

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#SC_3_187: {
	Properties: EnableKeyRotation: true
	...
}

