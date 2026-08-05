// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: domain.#Resource & #T0017 & #T0144 & #T0154 & #T0017_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#T0017: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#T0144: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#T0154: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#T0017_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

