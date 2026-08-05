// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ens_high & { ... }
#ens_high: function.#Resource & #Anexo_II_4_3_2_b

// Guard rule: LAMBDA_INSIDE_VPC
#Anexo_II_4_3_2_b: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

