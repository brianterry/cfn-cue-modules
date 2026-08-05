// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: loadbalancer.#Resource & #ctrl_1580 & #ctrl_261 & #ctrl_1552

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ctrl_1580: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#ctrl_261: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#ctrl_1552: {
	// No clauses extracted — manual review needed
	...
}

