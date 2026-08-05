// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nist_csf & { ... }
#nist_csf: function.#Resource & #PR_AC_3

// Guard rule: LAMBDA_INSIDE_VPC
#PR_AC_3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

