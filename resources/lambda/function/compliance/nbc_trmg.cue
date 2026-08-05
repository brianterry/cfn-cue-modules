// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: function.#Resource & #3_3_1_a & #3_1_1_d & #3_1_2_c

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#3_3_1_a: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#3_1_1_d: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#3_1_2_c: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

