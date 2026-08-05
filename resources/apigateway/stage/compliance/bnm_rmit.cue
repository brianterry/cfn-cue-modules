// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: stage.#Resource & #ctrl_10_18 & #ctrl_10_61

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_10_18: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_10_61: {
	// No clauses extracted — manual review needed
	...
}

