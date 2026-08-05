// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ffiec & { ... }
#ffiec: stage.#Resource & #D2_MA_Ma_B_1

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#D2_MA_Ma_B_1: {
	// No clauses extracted — manual review needed
	...
}

