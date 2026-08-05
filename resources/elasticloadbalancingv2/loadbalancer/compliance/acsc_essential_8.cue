// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: loadbalancer.#Resource & #Mitigation_strategies_to_recover_data_and_system_availability

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#Mitigation_strategies_to_recover_data_and_system_availability: {
	// No clauses extracted — manual review needed
	...
}

