// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: cluster.#Resource & #PR_AC_P1

// Guard rule: EMR_KERBEROS_ENABLED
#PR_AC_P1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

