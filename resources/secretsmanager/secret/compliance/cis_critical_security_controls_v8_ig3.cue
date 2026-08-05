// cis-critical-security-controls-v8-ig3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #cis_critical_security_controls_v8_ig3 enforces all cis-critical-security-controls-v8-ig3 controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#cis_critical_security_controls_v8_ig3 & { ... }
#cis_critical_security_controls_v8_ig3: secret.#Resource & #3_11

// Guard rule: SECRETSMANAGER_USING_CMK
#3_11: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

