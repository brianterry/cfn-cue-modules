// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: topic.#Resource & #10_18

// Guard rule: SNS_ENCRYPTED_KMS
#10_18: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

