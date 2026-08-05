// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: key.#Resource & #CM_6a

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#CM_6a: {
	Properties: EnableKeyRotation: true
	...
}

