// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: domain.#Resource & #10_18 & #10_53 & #10_27 & #10_18_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#10_18: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#10_53: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#10_27: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#10_18_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

