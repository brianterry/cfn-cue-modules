// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: loadbalancer.#Resource & #4_1

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#4_1: {
	// No clauses extracted — manual review needed
	...
}

