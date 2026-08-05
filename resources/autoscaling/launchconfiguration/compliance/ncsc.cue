// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#ncsc & { ... }
#ncsc: launchconfiguration.#Resource & #11__External_interface_protection

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#11__External_interface_protection: {
	// No clauses extracted — manual review needed
	...
}

