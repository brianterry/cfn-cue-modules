// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: stage.#Resource & #AC_2

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#AC_2: {
	// No clauses extracted — manual review needed
	...
}

