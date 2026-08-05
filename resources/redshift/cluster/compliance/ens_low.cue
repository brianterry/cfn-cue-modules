// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ens_low & { ... }
#ens_low: cluster.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: Encrypted: true
	...
}

