// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: notebookinstance.#Resource & #10_1_1 & #11_1_1__b

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#10_1_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#11_1_1__b: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

