// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: secret.#Resource & #ctrl_10_1_1

// Guard rule: SECRETSMANAGER_USING_CMK
#ctrl_10_1_1: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

