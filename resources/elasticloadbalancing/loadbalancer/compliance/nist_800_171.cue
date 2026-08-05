// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: loadbalancer.#Resource & #3_13_2 & #3_1_12 & #3_1_13

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#3_13_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#3_1_12: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#3_1_13: {
	// No clauses extracted — manual review needed
	...
}

