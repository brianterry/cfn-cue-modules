// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: stage.#Resource & #IA_1_076

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#IA_1_076: {
	// No clauses extracted — manual review needed
	...
}

