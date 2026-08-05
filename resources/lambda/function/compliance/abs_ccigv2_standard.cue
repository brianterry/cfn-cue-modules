// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: function.#Resource & #section4c_run_the_cloud_5_standard_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#section4c_run_the_cloud_5_standard_workloads: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

