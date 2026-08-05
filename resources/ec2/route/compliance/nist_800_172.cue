// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: route.#Resource & #3_1_3e

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#3_1_3e: {
	// No clauses extracted — manual review needed
	...
}

