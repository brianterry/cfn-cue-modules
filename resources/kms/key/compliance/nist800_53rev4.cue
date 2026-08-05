// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: key.#Resource & #SC_12

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#SC_12: {
	Properties: EnableKeyRotation: true
	...
}

