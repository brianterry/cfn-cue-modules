// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#ncsc & { ... }
#ncsc: endpointconfig.#Resource & #2__Asset_protection_and_resilience

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#2__Asset_protection_and_resilience: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

