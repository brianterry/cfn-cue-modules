// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: key.#Resource & #ctrl_11_3

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_11_3: {
	Properties: EnableKeyRotation: true
	...
}

