// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: key.#Resource & #T0017

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#T0017: {
	Properties: EnableKeyRotation: true
	...
}

