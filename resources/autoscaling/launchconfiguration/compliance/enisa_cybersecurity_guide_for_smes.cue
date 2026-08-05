// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/autoscaling/launchconfiguration"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: launchconfiguration.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: launchconfiguration.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION

// Guard rule: AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION: {
	// No clauses extracted — manual review needed
	...
}

