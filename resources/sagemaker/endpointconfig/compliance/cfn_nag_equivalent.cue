// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: endpointconfig.#Resource & #W1200

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#W1200: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

