// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: cluster.#Resource & #AC_2_g

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#AC_2_g: {
	Properties: Encrypted: true
	...
}

