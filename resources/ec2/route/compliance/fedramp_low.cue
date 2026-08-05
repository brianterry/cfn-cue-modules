// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: route.#Resource & #CM_2

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#CM_2: {
	// No clauses extracted — manual review needed
	...
}

