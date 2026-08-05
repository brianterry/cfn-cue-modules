// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: topic.#Resource & #ctrl_3_13_16

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_3_13_16: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

