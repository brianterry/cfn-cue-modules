// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: key.#Resource & #ctrl_2_7_2

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_2_7_2: {
	Properties: EnableKeyRotation: true
	...
}

