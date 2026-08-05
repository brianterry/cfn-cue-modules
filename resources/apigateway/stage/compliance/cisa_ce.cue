// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: stage.#Resource & #Your_Systems_3 & #Your_Systems_3_2

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Your_Systems_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#Your_Systems_3_2: {
	// No clauses extracted — manual review needed
	...
}

