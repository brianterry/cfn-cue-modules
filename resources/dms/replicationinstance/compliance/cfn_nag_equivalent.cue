// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: replicationinstance.#Resource & #W91

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#W91: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

