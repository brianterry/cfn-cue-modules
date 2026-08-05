// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: endpointconfig.#Resource & #CIS_13

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#CIS_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

