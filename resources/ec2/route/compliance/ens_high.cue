// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#ens_high & { ... }
#ens_high: route.#Resource & #Anexo_II_4_3_2_b

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#Anexo_II_4_3_2_b: {
	// No clauses extracted — manual review needed
	...
}

