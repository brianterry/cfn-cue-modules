// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: endpointconfig.#Resource & #ctrl_3_13_16

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_3_13_16: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

