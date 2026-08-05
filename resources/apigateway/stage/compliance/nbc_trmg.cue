// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: stage.#Resource & #ctrl_3_1_10_b & #ctrl_3_1_1_d

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_3_1_10_b: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_3_1_1_d: {
	// No clauses extracted — manual review needed
	...
}

