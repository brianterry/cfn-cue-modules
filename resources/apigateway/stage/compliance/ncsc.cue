// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/stage"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ncsc & { ... }
#ncsc: stage.#Resource & #2__Asset_protection_and_resilience

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#2__Asset_protection_and_resilience: {
	// No clauses extracted — manual review needed
	...
}

