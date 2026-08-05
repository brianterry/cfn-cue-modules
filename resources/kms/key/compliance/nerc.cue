// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#nerc & { ... }
#nerc: key.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#CIP_011_3_R1_Part_1_2: {
	Properties: EnableKeyRotation: true
	...
}

