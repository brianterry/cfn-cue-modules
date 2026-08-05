// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#ens_low & { ... }
#ens_low: notebookinstance.#Resource & #Anexo_II_4_1_2_a__b__c & #Anexo_II_4_3_2_b

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#Anexo_II_4_1_2_a__b__c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#Anexo_II_4_3_2_b: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

