// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ncsc & { ... }
#ncsc: topic.#Resource & #ctrl_2__Asset_protection_and_resilience

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_2__Asset_protection_and_resilience: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

