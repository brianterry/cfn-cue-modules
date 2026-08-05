// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: function.#Resource & #CA_7 & #CA_7_2 & #AC_3

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#CA_7: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#CA_7_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#AC_3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

