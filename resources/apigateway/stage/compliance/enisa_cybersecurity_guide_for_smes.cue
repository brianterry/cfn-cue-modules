// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/apigateway/stage"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: stage.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: stage.#Resource & #1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION

// Guard rule: API_GW_CACHE_ENABLED_AND_ENCRYPTED
#1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION: {
	// No clauses extracted — manual review needed
	...
}

