// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nist_csf & { ... }
#nist_csf: secret.#Resource & #PR_DS_1

// Guard rule: SECRETSMANAGER_USING_CMK
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

