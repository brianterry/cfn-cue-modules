// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nerc & { ... }
#nerc: cluster.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#CIP_011_3_R1_Part_1_2: {
	Properties: Encrypted: true
	...
}

