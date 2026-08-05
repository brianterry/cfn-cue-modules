// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: loadbalancer.#Resource & #AU_2_041 & #IA_2_081

// Guard rule: ELB_LOGGING_ENABLED
#AU_2_041: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#IA_2_081: {
	// No clauses extracted — manual review needed
	...
}

