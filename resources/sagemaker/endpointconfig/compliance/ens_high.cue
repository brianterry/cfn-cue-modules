// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#ens_high & { ... }
#ens_high: endpointconfig.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#Anexo_II_4_1_2_a;_b;_c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

