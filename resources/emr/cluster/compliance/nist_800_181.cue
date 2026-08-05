// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: cluster.#Resource & #T0144

// Guard rule: EMR_KERBEROS_ENABLED
#T0144: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

