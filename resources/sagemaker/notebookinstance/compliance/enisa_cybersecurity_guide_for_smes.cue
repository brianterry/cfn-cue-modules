// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: notebookinstance.#Resource & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION & #ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION_2

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#ctrl_1_DEVELOP_GOOD_CYBERSECURITY_CULTURE__REMEMBER_DATA_PROTECTION_2: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

