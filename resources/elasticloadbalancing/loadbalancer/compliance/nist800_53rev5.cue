// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: loadbalancer.#Resource & #CP_1a_1_b & #AC_4_26 & #AC_4

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#CP_1a_1_b: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#AC_4_26: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#AC_4: {
	// No clauses extracted — manual review needed
	...
}

