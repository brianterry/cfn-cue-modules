// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: domain.#Resource & #52c & #36d & #36i & #54

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#52c: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#36d: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#36i: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#54: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

