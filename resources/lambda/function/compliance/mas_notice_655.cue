// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/lambda/function"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: function.#Resource & #ctrl_4_4

// Guard rule: LAMBDA_INSIDE_VPC
#ctrl_4_4: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

