// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: loadbalancer.#Resource & #B3_b_Data_in_Transit

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#B3_b_Data_in_Transit: {
	// No clauses extracted — manual review needed
	...
}

