// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_csf & { ... }
#nist_csf: cluster.#Resource & #PR_AC_1

// Guard rule: EMR_KERBEROS_ENABLED
#PR_AC_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

