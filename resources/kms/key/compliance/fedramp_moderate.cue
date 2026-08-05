// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: key.#Resource & #SC_12

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#SC_12: {
	Properties: EnableKeyRotation: true
	...
}

