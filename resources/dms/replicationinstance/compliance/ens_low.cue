// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#ens_low & { ... }
#ens_low: replicationinstance.#Resource & #Anexo_II_4_3_2_b

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#Anexo_II_4_3_2_b: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

