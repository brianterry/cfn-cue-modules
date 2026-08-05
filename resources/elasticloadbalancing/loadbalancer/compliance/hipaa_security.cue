// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: loadbalancer.#Resource & #164_308_a_7_i & #164_312_b & #164_312_a_2_iv

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#164_308_a_7_i: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#164_312_b: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#164_312_a_2_iv: {
	// No clauses extracted — manual review needed
	...
}

