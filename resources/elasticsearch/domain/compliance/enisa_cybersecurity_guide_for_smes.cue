// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: domain.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION & #ctrl_7_SECURE_YOUR_NETWORK__REVIEW_REMOTE_ACCESS_SOLUTIONS & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_7_SECURE_YOUR_NETWORK__REVIEW_REMOTE_ACCESS_SOLUTIONS: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

