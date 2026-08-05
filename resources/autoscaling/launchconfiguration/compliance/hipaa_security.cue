// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: launchconfiguration.#Resource & #ctrl_164_308_a_3_i

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#ctrl_164_308_a_3_i: {
	// No clauses extracted — manual review needed
	...
}

