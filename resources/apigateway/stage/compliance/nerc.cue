// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nerc & { ... }
#nerc: stage.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#CIP_011_3_R1_Part_1_2: {
	// No clauses extracted — manual review needed
	...
}

