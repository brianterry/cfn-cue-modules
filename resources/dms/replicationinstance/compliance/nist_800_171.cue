// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: replicationinstance.#Resource & #3_1_1

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#3_1_1: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

