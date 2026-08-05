// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: domain.#Resource & #ctrl_3_1_10_b & #ctrl_3_1_2_c & #ctrl_3_1_1_d & #ctrl_3_1_2_c_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_3_1_10_b: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_3_1_2_c: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_3_1_1_d: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_3_1_2_c_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

