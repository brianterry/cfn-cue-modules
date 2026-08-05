// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: instance.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION: {
	// No clauses extracted — manual review needed
	...
}

