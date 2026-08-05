// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: function.#Resource & #ctrl_3_1_1

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_3_1_1: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

