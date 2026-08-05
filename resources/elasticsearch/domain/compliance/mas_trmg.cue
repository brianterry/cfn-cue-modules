// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: domain.#Resource & #ctrl_10_1_1 & #ctrl_11_1_1_b & #ctrl_7_5_7 & #ctrl_6_4_5

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_10_1_1: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_11_1_1_b: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_7_5_7: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_6_4_5: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

