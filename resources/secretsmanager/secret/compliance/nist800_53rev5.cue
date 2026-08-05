// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: secret.#Resource & #AU_9_3

// Guard rule: SECRETSMANAGER_USING_CMK
#AU_9_3: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

