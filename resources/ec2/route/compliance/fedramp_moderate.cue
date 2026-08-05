// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: route.#Resource & #AC_21_b

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#AC_21_b: {
	// No clauses extracted — manual review needed
	...
}

