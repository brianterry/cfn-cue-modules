// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: cluster.#Resource & #AC_1_001

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#AC_1_001: {
	Properties: PubliclyAccessible: false
	...
}

