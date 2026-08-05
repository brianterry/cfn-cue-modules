// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: stage.#Resource & #ctrl_52c & #ctrl_67

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#ctrl_52c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#ctrl_67: {
	// No clauses extracted — manual review needed
	...
}

