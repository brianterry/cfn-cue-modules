// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: cluster.#Resource & #2_6

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#2_6: {
	Properties: PubliclyAccessible: false
	...
}

