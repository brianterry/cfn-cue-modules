// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: secret.#Resource & #ctrl_164_312_a_2_iv

// Guard rule: SECRETSMANAGER_USING_CMK
#ctrl_164_312_a_2_iv: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

