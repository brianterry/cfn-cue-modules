// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nist_csf & { ... }
#nist_csf: stage.#Resource & #PR_DS_1 & #DE_AE_1

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#PR_DS_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: API_GW_EXECUTION_LOGGING_ENABLED
#DE_AE_1: {
	// No clauses extracted — manual review needed
	...
}

