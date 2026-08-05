// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: key.#Resource & #AttachmentE_4

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#AttachmentE_4: {
	Properties: EnableKeyRotation: true
	...
}

