// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: domain.#Resource & #11_10_g & #11_10_d & #11_10_e & #11_10_g_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#11_10_g: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#11_10_d: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#11_10_e: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#11_10_g_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

