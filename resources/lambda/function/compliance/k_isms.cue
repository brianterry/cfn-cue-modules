// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: function.#Resource & #2_9_2 & #2_6

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#2_9_2: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#2_6: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

