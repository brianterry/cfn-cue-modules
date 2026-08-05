// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: secret.#Resource & #3_1_10_b

// Guard rule: SECRETSMANAGER_USING_CMK
#3_1_10_b: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

