// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: loadbalancer.#Resource & #10_1 & #2_3

// Guard rule: ELB_LOGGING_ENABLED
#10_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#2_3: {
	// No clauses extracted — manual review needed
	...
}

