// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#ffiec & { ... }
#ffiec: route.#Resource & #D3_PC_Im_B_1

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#D3_PC_Im_B_1: {
	// No clauses extracted — manual review needed
	...
}

