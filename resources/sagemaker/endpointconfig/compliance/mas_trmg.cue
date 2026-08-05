// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: endpointconfig.#Resource & #ctrl_10_1_1

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_10_1_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

