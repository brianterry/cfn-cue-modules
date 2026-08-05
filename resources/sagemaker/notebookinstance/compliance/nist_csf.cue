// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#nist_csf & { ... }
#nist_csf: notebookinstance.#Resource & #PR_DS_1 & #PR_AC_3

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#PR_AC_3: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

