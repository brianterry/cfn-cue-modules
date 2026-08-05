// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: key.#Resource & #B3_c Stored Data

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#B3_c Stored Data: {
	Properties: EnableKeyRotation: true
	...
}

