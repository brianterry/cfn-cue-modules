// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nzism & { ... }
#nzism: topic.#Resource & #ctrl_4839

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_4839: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

