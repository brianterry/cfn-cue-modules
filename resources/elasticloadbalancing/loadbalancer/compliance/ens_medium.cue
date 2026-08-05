// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ens_medium & { ... }
#ens_medium: loadbalancer.#Resource & #Anexo_II_4_1_2_a_b_c & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a_b_c_2

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

