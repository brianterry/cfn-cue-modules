// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nzism & { ... }
#nzism: stage.#Resource & #2082

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#2082: {
	// No clauses extracted — manual review needed
	...
}

