// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: launchconfiguration.#Resource & #AC_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#AC_3: {
	// No clauses extracted — manual review needed
	...
}

