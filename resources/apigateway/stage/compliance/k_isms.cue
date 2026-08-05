// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: stage.#Resource & #2_7

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#2_7: {
	// No clauses extracted — manual review needed
	...
}

