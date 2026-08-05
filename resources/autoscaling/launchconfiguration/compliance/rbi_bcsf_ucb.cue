// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: launchconfiguration.#Resource & #Annex_I_1_3

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#Annex_I_1_3: {
	// No clauses extracted — manual review needed
	...
}

