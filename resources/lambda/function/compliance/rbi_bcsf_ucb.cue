// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: function.#Resource & #Annex_I_1_3

// Guard rule: LAMBDA_INSIDE_VPC
#Annex_I_1_3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

