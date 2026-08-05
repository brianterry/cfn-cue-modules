// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: loadbalancer.#Resource & #IA_2_081

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#IA_2_081: {
	// No clauses extracted — manual review needed
	...
}

