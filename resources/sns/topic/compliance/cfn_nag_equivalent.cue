// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: topic.#Resource & #W47

// Guard rule: SNS_ENCRYPTED_KMS
#W47: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

