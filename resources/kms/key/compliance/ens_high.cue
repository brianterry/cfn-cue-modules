// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#ens_high & { ... }
#ens_high: key.#Resource & #Anexo_II_5_7_4

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#Anexo_II_5_7_4: {
	Properties: EnableKeyRotation: true
	...
}

