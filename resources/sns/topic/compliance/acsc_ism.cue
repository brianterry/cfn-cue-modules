// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: topic.#Resource & #ctrl_1425

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_1425: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

