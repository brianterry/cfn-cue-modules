// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: domain.#Resource & #Annex_I_1_3 & #Annex_I_1_3_2 & #Annex_I_7_4 & #Annex_I_1_3_3

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#Annex_I_1_3: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#Annex_I_1_3_2: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#Annex_I_7_4: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#Annex_I_1_3_3: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

