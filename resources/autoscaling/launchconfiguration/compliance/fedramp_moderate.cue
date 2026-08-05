// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: launchconfiguration.#Resource & #AC_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#AC_3: {
	// No clauses extracted — manual review needed
	...
}

