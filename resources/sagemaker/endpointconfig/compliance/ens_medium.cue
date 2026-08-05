// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#ens_medium & { ... }
#ens_medium: endpointconfig.#Resource & #Anexo_II_4_1_2_a_b_c

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#Anexo_II_4_1_2_a_b_c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

