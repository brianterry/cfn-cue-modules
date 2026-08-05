// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: secret.#Resource & #10_18

// Guard rule: SECRETSMANAGER_USING_CMK
#10_18: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

