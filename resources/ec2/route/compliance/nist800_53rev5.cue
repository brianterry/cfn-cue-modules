// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: route.#Resource & #AC_4_21

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#AC_4_21: {
	// No clauses extracted — manual review needed
	...
}

