// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: function.#Resource & #3_1_3e

// Guard rule: LAMBDA_INSIDE_VPC
#3_1_3e: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

