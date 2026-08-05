// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: launchconfiguration.#Resource & #ctrl_3_1_2_c

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#ctrl_3_1_2_c: {
	// No clauses extracted — manual review needed
	...
}

