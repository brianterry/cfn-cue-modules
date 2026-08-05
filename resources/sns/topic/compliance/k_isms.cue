// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: topic.#Resource & #ctrl_2_7

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_2_7: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

