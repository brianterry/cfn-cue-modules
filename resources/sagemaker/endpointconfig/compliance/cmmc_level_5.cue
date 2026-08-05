// cmmc-level-5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #cmmc_level_5 enforces all cmmc-level-5 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#cmmc_level_5 & { ... }
#cmmc_level_5: endpointconfig.#Resource & #IA_2_081

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#IA_2_081: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

