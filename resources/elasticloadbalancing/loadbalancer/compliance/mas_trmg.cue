// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: loadbalancer.#Resource & #6_4_8 & #6_4_6 & #6_4_5

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#6_4_8: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#6_4_6: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#6_4_5: {
	// No clauses extracted — manual review needed
	...
}

