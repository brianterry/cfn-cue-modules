// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: notebookinstance.#Resource & #3_1_10_b & #3_1_2_c

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#3_1_10_b: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#3_1_2_c: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

