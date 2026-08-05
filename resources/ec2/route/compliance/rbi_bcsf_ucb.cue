// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/route"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: route.#Resource & #Annex_I_1_3

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#Annex_I_1_3: {
	// No clauses extracted — manual review needed
	...
}

