// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: loadbalancer.#Resource & #SC_1_175

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#SC_1_175: {
	// No clauses extracted — manual review needed
	...
}

