// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: stage.#Resource & #SC_28 & #AC_2_g

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#SC_28: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#AC_2_g: {
	// No clauses extracted — manual review needed
	...
}

