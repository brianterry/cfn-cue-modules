// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#ncsc & { ... }
#ncsc: domain.#Resource & #ctrl_2__Asset_protection_and_resilience & #ctrl_11__External_interface_protection & #ctrl_5__Operational_security & #ctrl_1__Data_in_transit_protection

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_2__Asset_protection_and_resilience: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_11__External_interface_protection: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_5__Operational_security: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_1__Data_in_transit_protection: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

