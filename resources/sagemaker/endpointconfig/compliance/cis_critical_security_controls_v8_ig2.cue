// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: endpointconfig.#Resource & #3_11

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#3_11: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

