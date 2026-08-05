// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ens_high & { ... }
#ens_high: cluster.#Resource & #Anexo_II_4_3_2_b

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#Anexo_II_4_3_2_b: {
	Properties: PubliclyAccessible: false
	...
}

