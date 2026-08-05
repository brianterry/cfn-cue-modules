// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: cluster.#Resource & #9_1_1

// Guard rule: EMR_KERBEROS_ENABLED
#9_1_1: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

