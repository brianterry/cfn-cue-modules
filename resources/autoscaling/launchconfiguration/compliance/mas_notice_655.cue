// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: launchconfiguration.#Resource & #4_4

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#4_4: {
	// No clauses extracted — manual review needed
	...
}

