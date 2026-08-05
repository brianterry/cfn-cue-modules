// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ens_medium & { ... }
#ens_medium: stage.#Resource & #Anexo_II_4_1_2_a__b__c & #Anexo_II_4_2_6_c

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Anexo_II_4_1_2_a__b__c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#Anexo_II_4_2_6_c: {
	// No clauses extracted — manual review needed
	...
}

