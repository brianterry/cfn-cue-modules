// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: stage.#Resource & #B3_c Stored Data

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#B3_c Stored Data: {
	// No clauses extracted — manual review needed
	...
}

