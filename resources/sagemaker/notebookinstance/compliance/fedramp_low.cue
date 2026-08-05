// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: notebookinstance.#Resource & #SC_13 & #AC_3

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#SC_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#AC_3: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

