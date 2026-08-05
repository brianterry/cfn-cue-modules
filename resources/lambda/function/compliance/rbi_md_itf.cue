// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: function.#Resource & #ctrl_4_4_h & #ctrl_4_4_h_2 & #ctrl_8_I

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#ctrl_4_4_h: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#ctrl_4_4_h_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_8_I: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

