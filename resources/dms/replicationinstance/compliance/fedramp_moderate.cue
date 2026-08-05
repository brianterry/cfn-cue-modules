// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: replicationinstance.#Resource & #AC_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#AC_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

