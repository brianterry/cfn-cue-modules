// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: function.#Resource & #ctrl_500_02_b_2

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_500_02_b_2: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

