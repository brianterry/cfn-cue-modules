// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ncsc & { ... }
#ncsc: loadbalancer.#Resource & #2__Asset_protection_and_resilience & #5__Operational_security & #1__Data_in_transit_protection

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#2__Asset_protection_and_resilience: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#5__Operational_security: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#1__Data_in_transit_protection: {
	// No clauses extracted — manual review needed
	...
}

