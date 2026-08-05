// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#ffiec & { ... }
#ffiec: launchconfiguration.#Resource & #D3_PC_Im_B_1

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#D3_PC_Im_B_1: {
	// No clauses extracted — manual review needed
	...
}

