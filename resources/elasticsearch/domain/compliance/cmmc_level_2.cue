// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: domain.#Resource & #IA_2_081 & #AC_1_001 & #IA_2_081_2

// Guard rule: ELASTICSEARCH_ENCRYPTED_AT_REST
#IA_2_081: {
	Properties: EncryptionAtRestOptions: Enabled: true
	...
}

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#AC_1_001: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#IA_2_081_2: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

