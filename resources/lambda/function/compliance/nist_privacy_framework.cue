// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/function"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: function.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: function.#Resource & #PR_AC_P3

// Guard rule: LAMBDA_INSIDE_VPC
#PR_AC_P3: {
	Properties: VpcConfig: SecurityGroupIds: [_, ...]
	Properties: VpcConfig: SubnetIds: [_, ...]
	...
}

