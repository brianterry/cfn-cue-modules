// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ffiec & { ... }
#ffiec: cluster.#Resource & #D3_PC_Im_B_1

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#D3_PC_Im_B_1: {
	Properties: PubliclyAccessible: false
	...
}

