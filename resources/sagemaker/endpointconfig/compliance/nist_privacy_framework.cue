// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: endpointconfig.#Resource & #PR_DS_P1

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#PR_DS_P1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

