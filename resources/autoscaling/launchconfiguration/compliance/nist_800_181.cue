// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: launchconfiguration.#Resource & #T0017

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#T0017: {
	// No clauses extracted — manual review needed
	...
}

