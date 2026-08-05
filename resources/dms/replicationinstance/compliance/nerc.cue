// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nerc & { ... }
#nerc: replicationinstance.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#CIP_011_3_R1_Part_1_2: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

