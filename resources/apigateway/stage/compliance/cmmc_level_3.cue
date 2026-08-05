// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: stage.#Resource & #IA_2_081

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#IA_2_081: {
	// No clauses extracted — manual review needed
	...
}

