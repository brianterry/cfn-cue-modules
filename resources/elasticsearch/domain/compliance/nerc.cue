// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nerc & { ... }
#nerc: domain.#Resource & #CIP_011_3_R1_Part_1_2 & #CIP_011_3_R1_Part_1_2_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#CIP_011_3_R1_Part_1_2: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#CIP_011_3_R1_Part_1_2_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

