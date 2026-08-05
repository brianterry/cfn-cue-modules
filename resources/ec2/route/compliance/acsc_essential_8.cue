// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: route.#Resource & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	// No clauses extracted — manual review needed
	...
}

