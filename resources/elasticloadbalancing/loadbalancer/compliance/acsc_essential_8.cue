// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: loadbalancer.#Resource & #Mitigation_strategies_to_recover_data_and_system_availability & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#Mitigation_strategies_to_recover_data_and_system_availability: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2: {
	// No clauses extracted — manual review needed
	...
}

