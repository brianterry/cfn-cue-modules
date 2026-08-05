// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: endpointconfig.#Resource & #PR_DS_1

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

