// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: launchconfiguration.#Resource & #AC_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#AC_3: {
	// No clauses extracted — manual review needed
	...
}

