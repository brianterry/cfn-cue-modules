// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: function.#Resource & #10_27 & #10_66_d & #10_53

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#10_27: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#10_66_d: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#10_53: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

