// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: domain.#Resource & #3_13_16 & #3_1_1 & #3_1_12 & #3_5_10

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#3_13_16: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#3_1_1: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#3_1_12: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#3_5_10: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

