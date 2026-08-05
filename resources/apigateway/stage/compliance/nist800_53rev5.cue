// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: stage.#Resource & #AU_9_3

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#AU_9_3: {
	// No clauses extracted — manual review needed
	...
}

