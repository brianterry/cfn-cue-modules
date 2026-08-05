// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: endpointconfig.#Resource & #SEC_8_3

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#SEC_8_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

