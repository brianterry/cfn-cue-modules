// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: notebookinstance.#Resource & #164_312_a_2_iv & #164_308_a_3_i

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#164_312_a_2_iv: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#164_308_a_3_i: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

