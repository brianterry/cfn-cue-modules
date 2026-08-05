// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: domain.#Resource & #2_7 & #2_7_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#2_7: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#2_7_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

