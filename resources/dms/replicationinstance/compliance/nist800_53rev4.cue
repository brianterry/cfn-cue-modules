// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: replicationinstance.#Resource & #AC_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#AC_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

