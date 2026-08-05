// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#nist_csf & { ... }
#nist_csf: endpointconfig.#Resource & #PR_DS_1

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#PR_DS_1: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

