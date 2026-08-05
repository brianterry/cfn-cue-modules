// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: endpointconfig.#Resource & #ctrl_10_18

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_10_18: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

