// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#ncsc & { ... }
#ncsc: stage.#Resource & #ctrl_2_Asset_protection_and_resilience & #ctrl_5_Operational_security

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_2_Asset_protection_and_resilience: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_5_Operational_security: {
	// No clauses extracted — manual review needed
	...
}

