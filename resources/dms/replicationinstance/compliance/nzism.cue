// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nzism & { ... }
#nzism: replicationinstance.#Resource & #3548

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#3548: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

