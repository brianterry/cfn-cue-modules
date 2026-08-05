// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: function.#Resource & #B4_a Secure by Design & #C1_a Monitoring Coverage & #B3_b Data in Transit

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#B4_a Secure by Design: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#C1_a Monitoring Coverage: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#B3_b Data in Transit: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

