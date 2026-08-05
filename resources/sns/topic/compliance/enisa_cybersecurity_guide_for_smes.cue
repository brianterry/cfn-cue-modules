// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: topic.#Resource & #1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION

// Guard rule: SNS_ENCRYPTED_KMS
#1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

