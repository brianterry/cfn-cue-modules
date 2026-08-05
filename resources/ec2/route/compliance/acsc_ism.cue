// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: route.#Resource & #1528

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#1528: {
	// No clauses extracted — manual review needed
	...
}

