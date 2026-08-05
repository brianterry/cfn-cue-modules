// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: function.#Resource & #AC_4

// Guard rule: LAMBDA_INSIDE_VPC
#AC_4: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

