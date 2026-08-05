// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: replicationinstance.#Resource & #AC_1_001

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#AC_1_001: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

