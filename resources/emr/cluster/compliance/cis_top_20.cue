// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: cluster.#Resource & #CIS_14

// Guard rule: EMR_KERBEROS_ENABLED
#CIS_14: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

