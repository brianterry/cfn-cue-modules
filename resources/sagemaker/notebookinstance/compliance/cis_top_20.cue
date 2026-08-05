// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: notebookinstance.#Resource & #CIS_13 & #CIS_9

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#CIS_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#CIS_9: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

