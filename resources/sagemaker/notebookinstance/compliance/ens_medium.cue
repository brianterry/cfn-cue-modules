// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#ens_medium & { ... }
#ens_medium: notebookinstance.#Resource & #Anexo_II_4_1_2_a_b_c & #Anexo_II_4_3_2_b

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#Anexo_II_4_1_2_a_b_c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#Anexo_II_4_3_2_b: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

