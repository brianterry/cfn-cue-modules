// cmmc-level-3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #cmmc_level_3 enforces all cmmc-level-3 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#cmmc_level_3 & { ... }
#cmmc_level_3: topic.#Resource & #IA_2_081

// Guard rule: SNS_ENCRYPTED_KMS
#IA_2_081: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

