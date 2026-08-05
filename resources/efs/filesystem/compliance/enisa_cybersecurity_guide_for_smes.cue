// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: filesystem.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION

// Guard rule: EFS_ENCRYPTED_CHECK
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE_REMEMBER_DATA_PROTECTION: {
	Properties: Encrypted: true
	...
}

