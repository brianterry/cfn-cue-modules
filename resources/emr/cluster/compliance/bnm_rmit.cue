// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: cluster.#Resource & #10_53

// Guard rule: EMR_KERBEROS_ENABLED
#10_53: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

