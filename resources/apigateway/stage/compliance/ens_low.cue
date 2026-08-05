// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ens_low & { ... }
#ens_low: stage.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Anexo_II_4_1_2_a;_b;_c: {
	// No clauses extracted — manual review needed
	...
}

