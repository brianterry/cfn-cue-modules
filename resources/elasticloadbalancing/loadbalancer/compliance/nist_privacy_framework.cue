// nist-privacy-framework compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #nist_privacy_framework enforces all nist-privacy-framework controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_privacy_framework & { ... }
#nist_privacy_framework: loadbalancer.#Resource & #PR_DS_P4 & #CT_DM_P8 & #CT_DM_P7

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#PR_DS_P4: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#CT_DM_P8: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#CT_DM_P7: {
	// No clauses extracted — manual review needed
	...
}

