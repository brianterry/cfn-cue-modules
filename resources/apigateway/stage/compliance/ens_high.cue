// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ens_high & { ... }
#ens_high: stage.#Resource & #Anexo_II_4_1_2_a_b_c & #Anexo_II_4_2_6_c

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Anexo_II_4_1_2_a_b_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	// No clauses extracted — manual review needed
	...
}

