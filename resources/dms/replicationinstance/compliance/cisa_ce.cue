// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: replicationinstance.#Resource & #Your_Systems_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#Your_Systems_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

