// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#ncsc & { ... }
#ncsc: route.#Resource & #5__Operational_security

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#5__Operational_security: {
	// No clauses extracted — manual review needed
	...
}

