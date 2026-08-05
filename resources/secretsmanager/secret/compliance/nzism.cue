// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nzism & { ... }
#nzism: secret.#Resource & #4839

// Guard rule: SECRETSMANAGER_USING_CMK
#4839: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

