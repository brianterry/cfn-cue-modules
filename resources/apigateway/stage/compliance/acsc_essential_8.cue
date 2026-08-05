// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: stage.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	// No clauses extracted — manual review needed
	...
}

