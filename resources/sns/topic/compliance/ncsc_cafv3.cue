// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: topic.#Resource & #B3_c_Stored_Data

// Guard rule: SNS_ENCRYPTED_KMS
#B3_c_Stored_Data: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

