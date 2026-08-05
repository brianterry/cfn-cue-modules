// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: launchconfiguration.#Resource & #B3_b_Data_in_Transit

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#B3_b_Data_in_Transit: {
	// No clauses extracted — manual review needed
	...
}

