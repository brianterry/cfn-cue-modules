// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: launchconfiguration.#Resource & #PR_AC_P3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#PR_AC_P3: {
	// No clauses extracted — manual review needed
	...
}

