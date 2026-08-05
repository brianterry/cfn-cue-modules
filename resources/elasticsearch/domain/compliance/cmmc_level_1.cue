// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domain"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: domain.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: domain.#Resource & #AC_1_001 & #SC_1_175

// Guard rule: ELASTICSEARCH_IN_VPC_ONLY
#AC_1_001: {
	Properties: VPCOptions: _ & !=_|_
	...
}

// Guard rule: ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK
#SC_1_175: {
	Properties: NodeToNodeEncryptionOptions: Enabled: true
	...
}

