// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ffiec & { ... }
#ffiec: cluster.#Resource & #D3_PC_Am_B_12

// Guard rule: EMR_KERBEROS_ENABLED
#D3_PC_Am_B_12: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

