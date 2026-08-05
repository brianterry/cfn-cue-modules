// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#ffiec & { ... }
#ffiec: domain.#Resource & #D3_PC_Am_B_12 & #D3_PC_Im_B_1 & #D2_MA_Ma_B_1 & #D3_PC_Am_B_12_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#D3_PC_Am_B_12: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#D3_PC_Im_B_1: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#D2_MA_Ma_B_1: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#D3_PC_Am_B_12_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

