// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: cluster.#Resource & #F63

// Guard rule: EMR_KERBEROS_ENABLED
#F63: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

