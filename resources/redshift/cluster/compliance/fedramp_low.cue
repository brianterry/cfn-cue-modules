// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: cluster.#Resource & #AC_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#AC_2: {
	Properties: Encrypted: true
	...
}

