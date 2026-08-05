// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: replicationinstance.#Resource & #T0017

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#T0017: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

