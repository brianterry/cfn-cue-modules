// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: launchconfiguration.#Resource & #500_02_a

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#500_02_a: {
	// No clauses extracted — manual review needed
	...
}

