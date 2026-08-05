// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: cluster.#Resource & #ctrl_3_1_1_h

// Guard rule: EMR_KERBEROS_ENABLED
#ctrl_3_1_1_h: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

