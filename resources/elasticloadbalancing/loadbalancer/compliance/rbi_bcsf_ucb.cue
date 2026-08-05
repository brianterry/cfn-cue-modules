// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: loadbalancer.#Resource & #Annex_I_7_4 & #Annex_I_1_3

// Guard rule: ELB_LOGGING_ENABLED
#Annex_I_7_4: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#Annex_I_1_3: {
	// No clauses extracted — manual review needed
	...
}

