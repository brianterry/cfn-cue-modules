// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dms/replicationinstance"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: replicationinstance.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: replicationinstance.#Resource & #PR_AC_P3

// Guard rule: DMS_REPLICATION_NOT_PUBLIC
#PR_AC_P3: {
	Properties: PubliclyAccessible: _ & !=_|_
	Properties: PubliclyAccessible: false
	...
}

