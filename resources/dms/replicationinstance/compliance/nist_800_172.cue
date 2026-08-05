// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: replicationinstance.#Resource & #3_1_3e

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#3_1_3e: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

