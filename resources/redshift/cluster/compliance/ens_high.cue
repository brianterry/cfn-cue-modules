// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ens_high & { ... }
#ens_high: cluster.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: Encrypted: true
	...
}

