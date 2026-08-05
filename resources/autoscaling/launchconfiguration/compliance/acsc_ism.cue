// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: launchconfiguration.#Resource & #1528

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#1528: {
	// No clauses extracted — manual review needed
	...
}

