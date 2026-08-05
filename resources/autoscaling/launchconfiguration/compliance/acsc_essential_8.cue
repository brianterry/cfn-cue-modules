// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: launchconfiguration.#Resource & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	// No clauses extracted — manual review needed
	...
}

