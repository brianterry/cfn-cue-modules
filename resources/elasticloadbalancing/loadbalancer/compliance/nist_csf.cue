// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_csf & { ... }
#nist_csf: loadbalancer.#Resource & #ID_BE_5 & #DE_AE_1 & #PR_DS_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ID_BE_5: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#DE_AE_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#PR_DS_2: {
	// No clauses extracted — manual review needed
	...
}

