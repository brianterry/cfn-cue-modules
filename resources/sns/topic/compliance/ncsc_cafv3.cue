// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: topic.#Resource & #B3_c Stored Data

// Guard rule: SNS_ENCRYPTED_KMS
#B3_c Stored Data: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

