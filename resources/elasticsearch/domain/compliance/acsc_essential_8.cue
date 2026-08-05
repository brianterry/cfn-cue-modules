// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: domain.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_prevent_malware_delivery_and_execution & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2 & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

