// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nzism & { ... }
#nzism: cluster.#Resource & #3548

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#3548: {
	Properties: PubliclyAccessible: false
	...
}

