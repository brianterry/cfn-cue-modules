// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: function.#Resource & #CIS_9

// Guard rule: LAMBDA_INSIDE_VPC
#CIS_9: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

