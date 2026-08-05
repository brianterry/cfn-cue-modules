// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: cluster.#Resource & #PR_AC_1

// Guard rule: EMR_KERBEROS_ENABLED
#PR_AC_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

