// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: domain.#Resource & #ctrl_3_13_16 & #ctrl_3_1_1 & #ctrl_3_1_12 & #ctrl_3_5_10

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_3_13_16: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_3_1_1: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_3_1_12: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_3_5_10: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

