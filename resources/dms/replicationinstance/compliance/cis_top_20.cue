// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: replicationinstance.#Resource & #CIS_9

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#CIS_9: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

