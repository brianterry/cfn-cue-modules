// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: topic.#Resource & #10_1_1

// Guard rule: SNS_ENCRYPTED_KMS
#10_1_1: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

