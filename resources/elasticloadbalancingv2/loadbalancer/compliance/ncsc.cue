// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ncsc & { ... }
#ncsc: loadbalancer.#Resource & #1__Data_in_transit_protection & #2__Asset_protection_and_resilience

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#1__Data_in_transit_protection: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#2__Asset_protection_and_resilience: {
	// No clauses extracted — manual review needed
	...
}

