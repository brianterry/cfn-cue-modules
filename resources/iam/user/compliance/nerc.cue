// nerc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #nerc enforces all nerc controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#nerc & { ... }
#nerc: user.#Resource & #CIP_004_7_R6_Part_6_1

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#CIP_004_7_R6_Part_6_1: {
	Properties: Policies: []
	...
}

