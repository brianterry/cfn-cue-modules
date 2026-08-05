// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: topic.#Resource & #IA_2_081

// Guard rule: SNS_ENCRYPTED_KMS
#IA_2_081: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

