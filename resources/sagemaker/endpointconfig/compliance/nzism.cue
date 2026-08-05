// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nzism & { ... }
#nzism: endpointconfig.#Resource & #4839

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#4839: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

