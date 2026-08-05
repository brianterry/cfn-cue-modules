// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: topic.#Resource & #52c

// Guard rule: SNS_ENCRYPTED_KMS
#52c: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

