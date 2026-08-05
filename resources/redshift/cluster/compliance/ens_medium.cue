// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ens_medium & { ... }
#ens_medium: cluster.#Resource & #Anexo_II_4_1_2_a__b__c

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Anexo_II_4_1_2_a__b__c: {
	Properties: Encrypted: true
	...
}

