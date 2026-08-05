// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: topic.#Resource & #SC_13

// Guard rule: SNS_ENCRYPTED_KMS
#SC_13: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

