// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: launchconfiguration.#Resource & #Your_Systems_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#Your_Systems_3: {
	// No clauses extracted — manual review needed
	...
}

