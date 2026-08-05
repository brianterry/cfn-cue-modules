// enisa-cybersecurity-guide-for-smes compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #enisa_cybersecurity_guide_for_smes enforces all enisa-cybersecurity-guide-for-smes controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#enisa_cybersecurity_guide_for_smes & { ... }
#enisa_cybersecurity_guide_for_smes: loadbalancer.#Resource & #7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS & #1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION

// Guard rule: ELB_LOGGING_ENABLED
#7_SECURE_YOUR_NETWORK:_REVIEW_REMOTE_ACCESS_SOLUTIONS: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#1_DEVELOP_GOOD_CYBERSECURITY_CULTURE:_REMEMBER_DATA_PROTECTION: {
	// No clauses extracted — manual review needed
	...
}

