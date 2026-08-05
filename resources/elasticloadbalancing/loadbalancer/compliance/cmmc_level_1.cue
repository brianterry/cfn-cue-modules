// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: loadbalancer.#Resource & #IA_1_076 & #SC_1_175

// Guard rule: ELB_LOGGING_ENABLED
#IA_1_076: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#SC_1_175: {
	// No clauses extracted — manual review needed
	...
}

