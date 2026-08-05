// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: loadbalancer.#Resource & #PR_PT_1 & #PR_DS_2

// Guard rule: ELB_LOGGING_ENABLED
#PR_PT_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#PR_DS_2: {
	// No clauses extracted — manual review needed
	...
}

