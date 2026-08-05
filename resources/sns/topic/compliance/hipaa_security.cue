// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: topic.#Resource & #164_312_a_2_iv

// Guard rule: SNS_ENCRYPTED_KMS
#164_312_a_2_iv: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

