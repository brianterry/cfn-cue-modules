// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#ens_low & { ... }
#ens_low: launchconfiguration.#Resource & #Art__22

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#Art__22: {
	// No clauses extracted — manual review needed
	...
}

