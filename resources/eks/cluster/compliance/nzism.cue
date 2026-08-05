// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/eks/cluster"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nzism & { ... }
#nzism: cluster.#Resource & #ctrl_3548

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#ctrl_3548: {
	Properties: PubliclyAccessible: false
	...
}

