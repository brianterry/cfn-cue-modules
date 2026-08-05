// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nzism & { ... }
#nzism: loadbalancer.#Resource & #ctrl_4829 & #ctrl_2013 & #ctrl_1667

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ctrl_4829: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#ctrl_2013: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#ctrl_1667: {
	// No clauses extracted — manual review needed
	...
}

