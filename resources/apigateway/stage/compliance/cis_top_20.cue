// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: stage.#Resource & #CIS_13

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#CIS_13: {
	// No clauses extracted — manual review needed
	...
}

