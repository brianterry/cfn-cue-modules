// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: domain.#Resource & #500_02_a & #500_02_b_2 & #500_02_b_3 & #500_02_a_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#500_02_a: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#500_02_b_2: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#500_02_b_3: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#500_02_a_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

