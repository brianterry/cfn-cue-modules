// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: key.#Resource & #F19

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#F19: {
	Properties: EnableKeyRotation: true
	...
}

