// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: endpointconfig.#Resource & #ctrl_52c

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#ctrl_52c: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

