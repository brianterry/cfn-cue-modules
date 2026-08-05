// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: endpointconfig.#Resource & #164_312_a_2_iv

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#164_312_a_2_iv: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

