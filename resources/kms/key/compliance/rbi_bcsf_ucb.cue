// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/key"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: key.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: key.#Resource & #Annex_I_1_3

// Guard rule: CMK_BACKING_KEY_ROTATION_ENABLED
#Annex_I_1_3: {
	Properties: EnableKeyRotation: true
	...
}

