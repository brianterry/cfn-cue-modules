// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: replicationinstance.#Resource & #10_53

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#10_53: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

