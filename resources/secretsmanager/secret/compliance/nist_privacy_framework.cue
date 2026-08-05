// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: secret.#Resource & #PR_DS_P1

// Guard rule: SECRETSMANAGER_USING_CMK
#PR_DS_P1: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

