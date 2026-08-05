// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ens_low & { ... }
#ens_low: loadbalancer.#Resource & #Anexo_II_4_1_2_a_b_c & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a_b_c_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#Anexo_II_4_1_2_a_b_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#Anexo_II_4_1_2_a_b_c_2: {
	// No clauses extracted — manual review needed
	...
}

