// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: route.#Resource & #B3_b Data in Transit

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#B3_b Data in Transit: {
	// No clauses extracted — manual review needed
	...
}

