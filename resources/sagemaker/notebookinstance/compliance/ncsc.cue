// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#ncsc & { ... }
#ncsc: notebookinstance.#Resource & #2__Asset_protection_and_resilience & #11__External_interface_protection

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#2__Asset_protection_and_resilience: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#11__External_interface_protection: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

