// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: endpointconfig.#Resource & #SC_13

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#SC_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

