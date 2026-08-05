// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: launchconfiguration.#Resource & #8_I

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#8_I: {
	// No clauses extracted — manual review needed
	...
}

