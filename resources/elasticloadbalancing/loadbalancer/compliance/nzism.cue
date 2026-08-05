// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nzism & { ... }
#nzism: loadbalancer.#Resource & #4829 & #2013 & #1667

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#4829: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#2013: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#1667: {
	// No clauses extracted — manual review needed
	...
}

