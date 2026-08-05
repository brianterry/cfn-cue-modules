// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: notebookinstance.#Resource & #SEC_8_3 & #SEC_3_7

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#SEC_8_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#SEC_3_7: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

