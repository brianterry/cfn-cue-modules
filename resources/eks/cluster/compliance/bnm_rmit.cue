// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: cluster.#Resource & #ctrl_10_53

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_10_53: {
	Properties: PubliclyAccessible: false
	...
}

