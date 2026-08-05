// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: launchconfiguration.#Resource & #3_1_2

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#3_1_2: {
	// No clauses extracted — manual review needed
	...
}

