// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: loadbalancer.#Resource & #3_3_1_a & #3_1_1_d & #3_1_2_c

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#3_3_1_a: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#3_1_1_d: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#3_1_2_c: {
	// No clauses extracted — manual review needed
	...
}

