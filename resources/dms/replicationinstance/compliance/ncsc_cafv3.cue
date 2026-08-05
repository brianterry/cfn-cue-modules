// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: replicationinstance.#Resource & #B3_b Data in Transit

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#B3_b Data in Transit: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

