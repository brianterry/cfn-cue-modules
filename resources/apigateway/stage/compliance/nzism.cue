// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nzism & { ... }
#nzism: stage.#Resource & #ctrl_2082

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_2082: {
	// No clauses extracted — manual review needed
	...
}

