// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: replicationinstance.#Resource & #11_1_1__b

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#11_1_1__b: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

