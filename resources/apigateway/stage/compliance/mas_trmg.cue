// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: stage.#Resource & #10_1_1

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#10_1_1: {
	// No clauses extracted — manual review needed
	...
}

