// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: notebookinstance.#Resource & #Annex_I_1_3 & #Annex_I_1_3_2

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#Annex_I_1_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#Annex_I_1_3_2: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

