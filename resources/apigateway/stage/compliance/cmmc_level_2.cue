// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: stage.#Resource & #IA_2_081 & #AU_2_041

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#IA_2_081: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#AU_2_041: {
	// No clauses extracted — manual review needed
	...
}

