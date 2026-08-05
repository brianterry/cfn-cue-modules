// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: notebookinstance.#Resource & #Your_Systems_3 & #Your_Systems_3_2

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#Your_Systems_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#Your_Systems_3_2: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

