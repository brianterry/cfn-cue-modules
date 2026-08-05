// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nerc & { ... }
#nerc: endpointconfig.#Resource & #CIP_011_3_R1_Part_1_2

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#CIP_011_3_R1_Part_1_2: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

