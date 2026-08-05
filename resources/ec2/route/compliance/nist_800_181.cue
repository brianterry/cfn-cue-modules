// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: route.#Resource & #T0144

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#T0144: {
	// No clauses extracted — manual review needed
	...
}

