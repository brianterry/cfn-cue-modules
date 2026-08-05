// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: loadbalancer.#Resource & #ctrl_36l & #ctrl_67 & #ctrl_54

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ctrl_36l: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#ctrl_67: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#ctrl_54: {
	// No clauses extracted — manual review needed
	...
}

