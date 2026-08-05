// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: function.#Resource & #ctrl_3_3_1_a & #ctrl_3_1_1_d & #ctrl_3_1_2_c

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#ctrl_3_3_1_a: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#ctrl_3_1_1_d: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_3_1_2_c: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

