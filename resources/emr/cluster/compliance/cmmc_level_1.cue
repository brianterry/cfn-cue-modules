// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: cluster.#Resource & #AC_1_001

// Guard rule: EMR_KERBEROS_ENABLED
#AC_1_001: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

