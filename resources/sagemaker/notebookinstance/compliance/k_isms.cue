// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: notebookinstance.#Resource & #ctrl_2_7 & #ctrl_2_6

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#ctrl_2_7: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#ctrl_2_6: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

