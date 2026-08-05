// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ncsc & { ... }
#ncsc: loadbalancer.#Resource & #ctrl_2__Asset_protection_and_resilience & #ctrl_5__Operational_security & #ctrl_1__Data_in_transit_protection

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#ctrl_2__Asset_protection_and_resilience: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#ctrl_5__Operational_security: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#ctrl_1__Data_in_transit_protection: {
	// No clauses extracted — manual review needed
	...
}

