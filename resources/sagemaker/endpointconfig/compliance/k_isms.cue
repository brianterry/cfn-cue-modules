// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: endpointconfig.#Resource & #ctrl_2_7

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_2_7: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

