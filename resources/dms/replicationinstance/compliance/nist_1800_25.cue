// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: replicationinstance.#Resource & #PR_AC_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#PR_AC_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

