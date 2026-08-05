// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: user.#Resource & #P10

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#P10: {
	Properties: Policies: []
	...
}

