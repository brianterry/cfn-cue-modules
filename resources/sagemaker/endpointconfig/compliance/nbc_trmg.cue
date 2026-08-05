// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: endpointconfig.#Resource & #3_1_10_b

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#3_1_10_b: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

