// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: stage.#Resource & #500_02_a

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#500_02_a: {
	// No clauses extracted — manual review needed
	...
}

