// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: function.#Resource & #AU_12_3 & #AU_12_3_2 & #AC_2_6

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#AU_12_3: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_DLQ_CHECK
#AU_12_3_2: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#AC_2_6: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

