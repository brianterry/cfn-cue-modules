// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/replicationinstance"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_csf & { ... }
#nist_csf: replicationinstance.#Resource & #PR_AC_3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#PR_AC_3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

