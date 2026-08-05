// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nzism & { ... }
#nzism: stage.#Resource & #2082 & #2013

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#2082: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#2013: {
	// No clauses extracted — manual review needed
	...
}

