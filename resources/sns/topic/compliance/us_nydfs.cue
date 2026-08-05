// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: topic.#Resource & #ctrl_500_02_a

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_500_02_a: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

