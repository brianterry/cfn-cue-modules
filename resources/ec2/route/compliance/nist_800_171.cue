// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: route.#Resource & #ctrl_3_1_2

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_3_1_2: {
	// No clauses extracted — manual review needed
	...
}

