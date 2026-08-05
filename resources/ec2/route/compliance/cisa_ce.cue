// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: route.#Resource & #Your_Systems_3

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#Your_Systems_3: {
	// No clauses extracted — manual review needed
	...
}

