// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: stage.#Resource & #ctrl_459 & #ctrl_261

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_459: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_261: {
	// No clauses extracted — manual review needed
	...
}

