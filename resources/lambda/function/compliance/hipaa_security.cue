// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: function.#Resource & #164_312_b & #164_312_b_2 & #164_308_a_3_i

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#164_312_b: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#164_312_b_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#164_308_a_3_i: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

