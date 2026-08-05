// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: loadbalancer.#Resource & #10_36 & #10_35 & #10_18

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#10_36: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#10_35: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#10_18: {
	// No clauses extracted — manual review needed
	...
}

