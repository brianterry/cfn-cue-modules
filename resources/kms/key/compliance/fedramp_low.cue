// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: key.#Resource & #SC_12

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#SC_12: {
	Properties: EnableKeyRotation: true
	...
}

