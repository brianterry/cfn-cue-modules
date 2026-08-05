// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: stage.#Resource & #459 & #261

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#459: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#261: {
	// No clauses extracted — manual review needed
	...
}

