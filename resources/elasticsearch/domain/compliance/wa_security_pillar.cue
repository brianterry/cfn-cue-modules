// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: domain.#Resource & #SEC_8_3 & #SEC_3_7 & #SEC_4_2 & #SEC_9_3

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#SEC_8_3: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#SEC_3_7: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#SEC_4_2: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#SEC_9_3: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

