// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: stage.#Resource & #2_7 & #2_9_4

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#2_7: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#2_9_4: {
	// No clauses extracted — manual review needed
	...
}

