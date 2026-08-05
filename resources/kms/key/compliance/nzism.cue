// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#nzism & { ... }
#nzism: key.#Resource & #3021

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#3021: {
	Properties: EnableKeyRotation: true
	...
}

