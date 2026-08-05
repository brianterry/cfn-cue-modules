// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: stage.#Resource & #3_1_h

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#3_1_h: {
	// No clauses extracted — manual review needed
	...
}

