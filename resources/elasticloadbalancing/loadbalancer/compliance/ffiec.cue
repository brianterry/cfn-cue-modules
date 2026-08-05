// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ffiec & { ... }
#ffiec: loadbalancer.#Resource & #D5_IR_Pl_B_6 & #D2_MA_Ma_B_1 & #D3_PC_Am_B_12

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#D5_IR_Pl_B_6: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#D2_MA_Ma_B_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#D3_PC_Am_B_12: {
	// No clauses extracted — manual review needed
	...
}

