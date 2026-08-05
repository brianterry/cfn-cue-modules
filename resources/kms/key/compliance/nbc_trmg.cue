// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: key.#Resource & #3_1_5_d_e

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#3_1_5_d_e: {
	Properties: EnableKeyRotation: true
	...
}

