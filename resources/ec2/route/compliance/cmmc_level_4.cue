// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: route.#Resource & #AC_1_003

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#AC_1_003: {
	// No clauses extracted — manual review needed
	...
}

