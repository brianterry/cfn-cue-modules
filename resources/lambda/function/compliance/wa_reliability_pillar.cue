// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: function.#Resource & #REL_1 & #REL_1_2 & #REL_2

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#REL_1: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#REL_1_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#REL_2: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

