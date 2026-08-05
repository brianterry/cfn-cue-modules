// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: stage.#Resource & #Annex_I_1_3 & #Annex_I_7_4

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Annex_I_1_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#Annex_I_7_4: {
	// No clauses extracted — manual review needed
	...
}

