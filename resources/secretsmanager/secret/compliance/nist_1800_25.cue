// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secret"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: secret.#Resource & #PR_DS_1

// Guard rule: SECRETSMANAGER_USING_CMK
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

