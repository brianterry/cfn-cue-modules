// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: secret.#Resource & #2_5_1

// Guard rule: SECRETSMANAGER_USING_CMK
#2_5_1: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

