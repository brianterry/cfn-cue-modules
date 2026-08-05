// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nist_csf & { ... }
#nist_csf: domain.#Resource & #PR_DS_1 & #PR_AC_3 & #DE_AE_1 & #PR_DS_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#PR_DS_1: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#PR_AC_3: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_LOGS_TO_CLOUDWATCH
#DE_AE_1: {
	Properties: LogPublishingOptions: _ & !=_|_
	Properties: LogPublishingOptions: ES_APPLICATION_LOGS: Enabled: true
	Properties: LogPublishingOptions: SEARCH_SLOW_LOGS: Enabled: true
	Properties: LogPublishingOptions: INDEX_SLOW_LOGS: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#PR_DS_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

