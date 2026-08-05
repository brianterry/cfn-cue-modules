// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: function.#Resource & #Your_Systems_3

// Guard rule: LAMBDA_INSIDE_VPC
#Your_Systems_3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

