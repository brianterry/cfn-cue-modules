// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: route.#Resource & #ctrl_164_312_e_1

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_164_312_e_1: {
	// No clauses extracted — manual review needed
	...
}

