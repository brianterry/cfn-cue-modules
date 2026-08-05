// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/kms/key"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: key.#Resource & #ctrl_2_2

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#ctrl_2_2: {
	Properties: EnableKeyRotation: true
	...
}

