// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/user"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: user.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: user.#Resource & #Annex_I_7_1 & #Annex_I_7_1_2

// Guard rule: IAM_NO_INLINE_POLICY_CHECK
#Annex_I_7_1: {
	Properties: Policies: []
	...
}

// Guard rule: IAM_USER_NO_POLICIES_CHECK
#Annex_I_7_1_2: {
	Properties: Policies: []
	...
}

