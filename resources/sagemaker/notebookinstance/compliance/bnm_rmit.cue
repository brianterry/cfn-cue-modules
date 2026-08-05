// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: notebookinstance.#Resource & #10_18 & #10_53

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#10_18: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#10_53: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

