// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: cluster.#Resource & #AC_1_001

// Guard rule: EMR_KERBEROS_ENABLED
#AC_1_001: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

