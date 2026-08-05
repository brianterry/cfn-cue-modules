// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: loadbalancer.#Resource & #CM_2

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#CM_2: {
	// No clauses extracted — manual review needed
	...
}

