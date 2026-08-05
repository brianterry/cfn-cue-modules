// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#ffiec & { ... }
#ffiec: replicationinstance.#Resource & #D3_PC_Im_B_1

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#D3_PC_Im_B_1: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

