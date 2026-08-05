// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: domain.#Resource & #Your_Systems_3 & #Your_Systems_3_2 & #Your_Systems_3_3 & #Your_Systems_3_4

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#Your_Systems_3: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#Your_Systems_3_2: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#Your_Systems_3_3: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#Your_Systems_3_4: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

