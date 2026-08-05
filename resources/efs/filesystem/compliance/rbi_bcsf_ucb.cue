// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: filesystem.#Resource & #Annex_I_1_3

// Guard rule: EFS_ENCRYPTED_CHECK
#Annex_I_1_3: {
	Properties: Encrypted: true
	...
}

