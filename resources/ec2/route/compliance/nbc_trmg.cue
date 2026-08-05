// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: route.#Resource & #ctrl_3_1_2_c

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_3_1_2_c: {
	// No clauses extracted — manual review needed
	...
}

