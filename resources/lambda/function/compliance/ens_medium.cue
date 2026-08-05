// ens-medium compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #ens_medium enforces all ens-medium controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#ens_medium & { ... }
#ens_medium: function.#Resource & #Anexo_II_4_3_2_b

// Guard rule: LAMBDA_INSIDE_VPC
#Anexo_II_4_3_2_b: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

