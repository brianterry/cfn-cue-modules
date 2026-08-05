// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: endpointconfig.#Resource & #T0017

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#T0017: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

