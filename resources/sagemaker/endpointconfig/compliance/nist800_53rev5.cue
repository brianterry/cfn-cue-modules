// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: endpointconfig.#Resource & #AU_9_3

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#AU_9_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

