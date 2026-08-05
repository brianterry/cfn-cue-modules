// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: topic.#Resource & #ctrl_3_1_10_b

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_3_1_10_b: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

