// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: loadbalancer.#Resource & #B3_b Data in Transit & #C1_c_Generating_Alerts & #B3_b Data in Transit_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#B3_b Data in Transit: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#C1_c_Generating_Alerts: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#B3_b Data in Transit_2: {
	// No clauses extracted — manual review needed
	...
}

