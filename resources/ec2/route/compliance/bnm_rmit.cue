// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: route.#Resource & #ctrl_10_53

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_10_53: {
	// No clauses extracted — manual review needed
	...
}

