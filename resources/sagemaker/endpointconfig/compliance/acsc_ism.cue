// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: endpointconfig.#Resource & #ctrl_459

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_459: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

