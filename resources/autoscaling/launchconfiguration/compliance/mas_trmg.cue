// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: launchconfiguration.#Resource & #11_1_1__b

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#11_1_1__b: {
	// No clauses extracted — manual review needed
	...
}

