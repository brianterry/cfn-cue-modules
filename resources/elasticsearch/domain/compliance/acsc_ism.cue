// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: domain.#Resource & #459 & #1528 & #1405 & #P7

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#459: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#1528: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#1405: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#P7: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

