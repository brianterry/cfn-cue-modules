// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#ens_high & { ... }
#ens_high: domain.#Resource & #Anexo_II_4_1_2_a_b_c & #Anexo_II_4_3_2_b & #Anexo_II_4_2_6_c & #Anexo_II_4_1_2_a_b_c_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#Anexo_II_4_1_2_a_b_c: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#Anexo_II_4_3_2_b: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#Anexo_II_4_2_6_c: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#Anexo_II_4_1_2_a_b_c_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

