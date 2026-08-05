// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: notebookinstance.#Resource & #500_02_a & #500_02_b_2

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#500_02_a: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#500_02_b_2: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

