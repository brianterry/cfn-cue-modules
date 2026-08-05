// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: domain.#Resource & #ctrl_164_312_a_2_iv & #ctrl_164_308_a_3_i & #ctrl_164_308_a_3_ii_A & #ctrl_164_312_a_2_iv_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_164_312_a_2_iv: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_164_308_a_3_i: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#ctrl_164_308_a_3_ii_A: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_164_312_a_2_iv_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

