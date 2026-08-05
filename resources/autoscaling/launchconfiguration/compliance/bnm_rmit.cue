// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: launchconfiguration.#Resource & #10_53

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#10_53: {
	// No clauses extracted — manual review needed
	...
}

