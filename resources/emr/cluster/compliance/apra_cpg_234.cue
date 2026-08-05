// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: cluster.#Resource & #36d

// Guard rule: EMR_KERBEROS_ENABLED
#36d: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

