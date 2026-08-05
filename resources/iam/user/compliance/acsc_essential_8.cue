// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/iam/user"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: user.#Resource & #Restrict_administrative_privileges

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#Restrict_administrative_privileges: {
	Properties: Policies: []
	...
}

