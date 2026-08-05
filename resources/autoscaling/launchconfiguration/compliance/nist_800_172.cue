// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: launchconfiguration.#Resource & #3_1_3e

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#3_1_3e: {
	// No clauses extracted — manual review needed
	...
}

