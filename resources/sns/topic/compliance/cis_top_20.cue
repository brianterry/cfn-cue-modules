// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sns/topic"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: topic.#Resource & #CIS_13

// Guard rule: SNS_ENCRYPTED_KMS
#CIS_13: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

