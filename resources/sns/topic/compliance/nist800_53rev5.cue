// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: topic.#Resource & #AU_9_3

// Guard rule: SNS_ENCRYPTED_KMS
#AU_9_3: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

