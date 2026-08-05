// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: stage.#Resource & #ctrl_3_13_16 & #ctrl_3_1_12

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_3_13_16: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_3_1_12: {
	// No clauses extracted — manual review needed
	...
}

