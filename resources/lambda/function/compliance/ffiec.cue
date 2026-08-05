// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ffiec & { ... }
#ffiec: function.#Resource & #D3_DC_Ev_B_1 & #D5_DR_De_B_2 & #D3_PC_Im_B_1

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#D3_DC_Ev_B_1: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#D5_DR_De_B_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#D3_PC_Im_B_1: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

