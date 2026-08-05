// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: notebookinstance.#Resource & #2_7 & #2_6

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#2_7: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#2_6: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

