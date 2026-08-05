// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: loadbalancer.#Resource & #36l & #67 & #54

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#36l: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#67: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#54: {
	// No clauses extracted — manual review needed
	...
}

