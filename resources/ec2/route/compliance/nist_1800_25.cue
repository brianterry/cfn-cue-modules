// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: route.#Resource & #PR_AC_3

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#PR_AC_3: {
	// No clauses extracted — manual review needed
	...
}

