// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: stage.#Resource & #PR_DS_P1

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#PR_DS_P1: {
	// No clauses extracted — manual review needed
	...
}

