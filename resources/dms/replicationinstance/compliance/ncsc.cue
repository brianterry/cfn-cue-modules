// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#ncsc & { ... }
#ncsc: replicationinstance.#Resource & #ctrl_11_External_interface_protection

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#ctrl_11_External_interface_protection: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

