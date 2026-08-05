// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: function.#Resource & #T0154 & #T0154_2 & #T0144

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#T0154: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#T0154_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#T0144: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

