// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nist_csf & { ... }
#nist_csf: launchconfiguration.#Resource & #PR_AC_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#PR_AC_3: {
	// No clauses extracted — manual review needed
	...
}

