// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: notebookinstance.#Resource & #ctrl_3_13_16 & #ctrl_3_1_1

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#ctrl_3_13_16: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#ctrl_3_1_1: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

