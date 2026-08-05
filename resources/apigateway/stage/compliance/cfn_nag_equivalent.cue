// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: stage.#Resource & #W87 & #W69 & #W46

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#W87: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_STAGE_ACCESS_LOGGING_RULE
#W69: {
	Properties: AccessLogSetting: _ & !=_|_
	...
}

// Guard rule: API_GWV2_ACCESS_LOGS_ENABLED
#W46: {
	// No clauses extracted — manual review needed
	...
}

