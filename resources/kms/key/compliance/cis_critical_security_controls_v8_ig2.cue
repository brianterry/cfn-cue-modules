// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: key.#Resource & #ctrl_4_6

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_4_6: {
	Properties: EnableKeyRotation: true
	...
}

