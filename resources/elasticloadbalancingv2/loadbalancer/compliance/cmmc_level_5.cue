// cmmc-level-5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #cmmc_level_5 enforces all cmmc-level-5 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cmmc_level_5 & { ... }
#cmmc_level_5: loadbalancer.#Resource & #IA_2_081 & #RE_5_140

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#IA_2_081: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#RE_5_140: {
	// No clauses extracted — manual review needed
	...
}

