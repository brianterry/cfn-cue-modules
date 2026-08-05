// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: stage.#Resource & #3_4 & #10_1

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#3_4: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#10_1: {
	// No clauses extracted — manual review needed
	...
}

