// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: stage.#Resource & #PR_DS_1

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#PR_DS_1: {
	// No clauses extracted — manual review needed
	...
}

