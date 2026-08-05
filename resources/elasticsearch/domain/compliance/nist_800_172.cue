// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: domain.#Resource & #ctrl_3_1_3e & #ctrl_3_1_3e_2

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#ctrl_3_1_3e: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#ctrl_3_1_3e_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

