// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: stage.#Resource & #T0017

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#T0017: {
	// No clauses extracted — manual review needed
	...
}

