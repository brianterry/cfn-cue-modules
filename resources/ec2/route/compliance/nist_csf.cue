// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#nist_csf & { ... }
#nist_csf: route.#Resource & #DE_AE_1

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#DE_AE_1: {
	// No clauses extracted — manual review needed
	...
}

