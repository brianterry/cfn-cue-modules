// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: notebookinstance.#Resource & #B3_c_Stored_Data & #B3_b_Data_in_Transit

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#B3_c_Stored_Data: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#B3_b_Data_in_Transit: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

