// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: topic.#Resource & #Your_Systems_3

// Guard rule: SNS_ENCRYPTED_KMS
#Your_Systems_3: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

