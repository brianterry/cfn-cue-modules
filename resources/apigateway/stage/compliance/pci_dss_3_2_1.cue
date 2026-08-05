// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: stage.#Resource & #ctrl_3_4

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_3_4: {
	// No clauses extracted — manual review needed
	...
}

