// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: launchconfiguration.#Resource & #REL_7

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#REL_7: {
	// No clauses extracted — manual review needed
	...
}

