// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: route.#Resource & #500_02_b_2

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#500_02_b_2: {
	// No clauses extracted — manual review needed
	...
}

