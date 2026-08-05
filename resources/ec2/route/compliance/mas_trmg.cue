// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: route.#Resource & #ctrl_11_1_1__b

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_11_1_1__b: {
	// No clauses extracted — manual review needed
	...
}

