// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: domain.#Resource & #B3_c Stored Data & #B3_b Data in Transit & #C1_c_Generating_Alerts & #B3_b Data in Transit_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#B3_c Stored Data: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#B3_b Data in Transit: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#C1_c_Generating_Alerts: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#B3_b Data in Transit_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

