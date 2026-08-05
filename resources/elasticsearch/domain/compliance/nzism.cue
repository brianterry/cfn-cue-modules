// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nzism & { ... }
#nzism: domain.#Resource & #ctrl_2082 & #ctrl_3548 & #ctrl_1847

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#ctrl_2082: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_3548: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_1847: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

