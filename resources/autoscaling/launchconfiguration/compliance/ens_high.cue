// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#ens_high & { ... }
#ens_high: launchconfiguration.#Resource & #Art__22

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#Art__22: {
	// No clauses extracted — manual review needed
	...
}

