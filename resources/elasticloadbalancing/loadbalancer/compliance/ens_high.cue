// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ens_high & { ... }
#ens_high: loadbalancer.#Resource & #Anexo_II_4_1_2_a__b__c & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a__b__c_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#Anexo_II_4_1_2_a__b__c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#Anexo_II_4_1_2_a__b__c_2: {
	// No clauses extracted — manual review needed
	...
}

