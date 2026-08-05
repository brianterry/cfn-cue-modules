// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nzism & { ... }
#nzism: domain.#Resource & #2082 & #3548 & #1847

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#2082: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#3548: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#1847: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

