// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: function.#Resource & #section4a_govern_the_cloud_3_material_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#section4a_govern_the_cloud_3_material_workloads: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

