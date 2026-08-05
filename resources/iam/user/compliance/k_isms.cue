// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: user.#Resource & #2_5_1

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#2_5_1: {
	Properties: Policies: []
	...
}

