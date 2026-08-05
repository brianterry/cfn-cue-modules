// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: stage.#Resource & #ctrl_10_1_1 & #ctrl_6_4_6

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_10_1_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_6_4_6: {
	// No clauses extracted — manual review needed
	...
}

