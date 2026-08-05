// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ncsc & { ... }
#ncsc: function.#Resource & #ctrl_5__Operational_security & #ctrl_11__External_interface_protection

// Guard rule: LAMBDA_DLQ_CHECK
#ctrl_5__Operational_security: {
	Properties: DeadLetterConfig: TargetArn: [_, ...]
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_11__External_interface_protection: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

