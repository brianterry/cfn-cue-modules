// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/launchconfiguration"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: launchconfiguration.#Resource & #3_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#3_3: {
	// No clauses extracted — manual review needed
	...
}

