// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: stage.#Resource & #AU_9_3 & #AC_4_26

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#AU_9_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#AC_4_26: {
	// No clauses extracted — manual review needed
	...
}

