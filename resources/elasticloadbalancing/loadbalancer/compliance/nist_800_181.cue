// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: loadbalancer.#Resource & #T0008 & #T0154 & #T0017

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#T0008: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#T0154: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#T0017: {
	// No clauses extracted — manual review needed
	...
}

