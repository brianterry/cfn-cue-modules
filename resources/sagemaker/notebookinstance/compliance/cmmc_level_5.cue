// cmmc-level-5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #cmmc_level_5 enforces all cmmc-level-5 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#cmmc_level_5 & { ... }
#cmmc_level_5: notebookinstance.#Resource & #IA_2_081 & #AC_1_001

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#IA_2_081: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#AC_1_001: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

