// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: endpointconfig.#Resource & #Your_Systems_3

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#Your_Systems_3: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

