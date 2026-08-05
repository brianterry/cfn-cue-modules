// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: stage.#Resource & #SEC_4_2

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#SEC_4_2: {
	// No clauses extracted — manual review needed
	...
}

