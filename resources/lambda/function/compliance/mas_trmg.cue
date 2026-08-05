// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: function.#Resource & #11_1_1__b

// Guard rule: LAMBDA_INSIDE_VPC
#11_1_1__b: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

