// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: endpointconfig.#Resource & #B3_c Stored Data

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#B3_c Stored Data: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

