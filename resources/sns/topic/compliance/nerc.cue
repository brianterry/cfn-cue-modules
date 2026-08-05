// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#nerc & { ... }
#nerc: topic.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: SNS_ENCRYPTED_KMS
#CIP_011_3_R1_Part_1_2: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

