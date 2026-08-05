// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nist_csf & { ... }
#nist_csf: topic.#Resource & #PR_DS_1

// Guard rule: SNS_ENCRYPTED_KMS
#PR_DS_1: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

