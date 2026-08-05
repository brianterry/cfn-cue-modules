// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: topic.#Resource & #PR_DS_P1

// Guard rule: SNS_ENCRYPTED_KMS
#PR_DS_P1: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

