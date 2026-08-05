// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: stage.#Resource & #164_312_a_2_iv

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#164_312_a_2_iv: {
	// No clauses extracted — manual review needed
	...
}

