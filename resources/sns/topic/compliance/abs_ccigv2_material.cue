// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/topic"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: topic.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: topic.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads

// Guard rule: SNS_ENCRYPTED_KMS
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: KmsMasterKeyId: _ & !=_|_
	...
}

