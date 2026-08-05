// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: cluster.#Resource & #F28

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#F28: {
	Properties: Encrypted: true
	...
}

