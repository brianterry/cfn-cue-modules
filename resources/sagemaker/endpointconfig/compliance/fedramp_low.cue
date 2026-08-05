// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: endpointconfig.#Resource & #SC_13

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#SC_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

