// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: function.#Resource & #SEC_3_7

// Guard rule: LAMBDA_INSIDE_VPC
#SEC_3_7: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

