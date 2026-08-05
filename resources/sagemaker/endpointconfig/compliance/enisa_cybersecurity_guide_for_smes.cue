// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: endpointconfig.#Resource & #ctrl_6_SECURE_DEVICES_ENCRYPTION

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_6_SECURE_DEVICES_ENCRYPTION: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

