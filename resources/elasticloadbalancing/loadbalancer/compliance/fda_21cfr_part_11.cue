// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: loadbalancer.#Resource & #ctrl_11_10_a & #ctrl_11_10_e & #ctrl_11_3

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ctrl_11_10_a: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#ctrl_11_10_e: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#ctrl_11_3: {
	// No clauses extracted — manual review needed
	...
}

