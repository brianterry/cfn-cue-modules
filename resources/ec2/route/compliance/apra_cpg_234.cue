// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: route.#Resource & #ctrl_36d

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#ctrl_36d: {
	// No clauses extracted — manual review needed
	...
}

