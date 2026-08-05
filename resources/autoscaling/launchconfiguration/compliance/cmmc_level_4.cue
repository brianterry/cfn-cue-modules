// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: launchconfiguration.#Resource & #AC_1_003

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#AC_1_003: {
	// No clauses extracted — manual review needed
	...
}

