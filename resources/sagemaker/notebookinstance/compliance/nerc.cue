// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#nerc & { ... }
#nerc: notebookinstance.#Resource & #CIP_011_3_R1_Part_1_2 & #CIP_011_3_R1_Part_1_2_2

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#CIP_011_3_R1_Part_1_2: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#CIP_011_3_R1_Part_1_2_2: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

