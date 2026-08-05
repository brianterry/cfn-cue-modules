// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nzism & { ... }
#nzism: secret.#Resource & #ctrl_4839

// Guard rule: SECRETSMANAGER_USING_CMK
#ctrl_4839: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

