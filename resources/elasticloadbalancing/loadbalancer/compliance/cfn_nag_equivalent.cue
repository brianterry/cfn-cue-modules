// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: loadbalancer.#Resource & #W26

// Guard rule: ELB_LOGGING_ENABLED
#W26: {
	// No clauses extracted — manual review needed
	...
}

