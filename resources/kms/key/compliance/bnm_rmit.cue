// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: key.#Resource & #10_18

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#10_18: {
	Properties: EnableKeyRotation: true
	...
}

