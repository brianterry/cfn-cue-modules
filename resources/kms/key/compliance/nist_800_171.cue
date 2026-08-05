// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: key.#Resource & #3_13_10

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#3_13_10: {
	Properties: EnableKeyRotation: true
	...
}

