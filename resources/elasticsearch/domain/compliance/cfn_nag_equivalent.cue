// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticsearch/domain"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: domain.#Resource & #W54 & #W90 & #W85

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#W54: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#W90: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#W85: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

