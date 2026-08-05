// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: topic.#Resource & #ctrl_8_2_1

// Guard rule: SNS_ENCRYPTED_KMS
#ctrl_8_2_1: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

