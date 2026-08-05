// cis-critical-security-controls-v8-ig3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #cis_critical_security_controls_v8_ig3 enforces all cis-critical-security-controls-v8-ig3 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cis_critical_security_controls_v8_ig3 & { ... }
#cis_critical_security_controls_v8_ig3: loadbalancer.#Resource & #12_2 & #3_8 & #3_1

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#12_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#3_8: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#3_1: {
	// No clauses extracted — manual review needed
	...
}

