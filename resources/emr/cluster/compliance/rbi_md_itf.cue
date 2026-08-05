// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: cluster.#Resource & #3_1_c_

// Guard rule: EMR_KERBEROS_ENABLED
#3_1_c_: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

