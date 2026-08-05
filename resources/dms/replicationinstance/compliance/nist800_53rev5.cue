// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: replicationinstance.#Resource & #AC_2_6

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#AC_2_6: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

