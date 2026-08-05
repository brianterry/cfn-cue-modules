// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: cluster.#Resource & #ctrl_11_1_1_b

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_11_1_1_b: {
	Properties: PubliclyAccessible: false
	...
}

