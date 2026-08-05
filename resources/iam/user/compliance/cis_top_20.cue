// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: user.#Resource & #CIS_16

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#CIS_16: {
	Properties: Policies: []
	...
}

