// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/endpointconfig"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: endpointconfig.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

