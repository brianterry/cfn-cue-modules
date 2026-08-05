// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: filesystem.#Resource & #164_312_a_2_iv

// Guard rule: EFS_ENCRYPTED_CHECK
#164_312_a_2_iv: {
	Properties: Encrypted: true
	...
}

