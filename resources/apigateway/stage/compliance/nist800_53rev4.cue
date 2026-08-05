// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: stage.#Resource & #SC_13 & #AU_2_a_d

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#SC_13: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#AU_2_a_d: {
	// No clauses extracted — manual review needed
	...
}

