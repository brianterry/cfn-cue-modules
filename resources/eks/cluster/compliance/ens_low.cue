// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ens_low & { ... }
#ens_low: cluster.#Resource & #Anexo_II_4_3_2_b

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#Anexo_II_4_3_2_b: {
	Properties: PubliclyAccessible: false
	...
}

