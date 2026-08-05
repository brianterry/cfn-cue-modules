// cis-critical-security-controls-v8-ig2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #cis_critical_security_controls_v8_ig2 enforces all cis-critical-security-controls-v8-ig2 controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#cis_critical_security_controls_v8_ig2 & { ... }
#cis_critical_security_controls_v8_ig2: function.#Resource & #3_8 & #3_3

// Guard rule: LAMBDA_CONCURRENCY_CHECK
#3_8: {
	Properties: ReservedConcurrentExecutions: >=0
	...
}

// Guard rule: LAMBDA_INSIDE_VPC
#3_3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

