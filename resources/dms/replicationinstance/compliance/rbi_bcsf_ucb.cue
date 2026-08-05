// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: replicationinstance.#Resource & #Annex_I_1_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#Annex_I_1_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

