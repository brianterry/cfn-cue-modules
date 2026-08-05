// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: notebookinstance.#Resource & #52c & #36d

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#52c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#36d: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

