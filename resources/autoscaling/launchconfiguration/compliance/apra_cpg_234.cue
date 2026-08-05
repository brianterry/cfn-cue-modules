// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: launchconfiguration.#Resource & #ctrl_36d

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#ctrl_36d: {
	// No clauses extracted — manual review needed
	...
}

