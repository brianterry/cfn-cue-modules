// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: route.#Resource & #2_6_7

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#2_6_7: {
	// No clauses extracted — manual review needed
	...
}

