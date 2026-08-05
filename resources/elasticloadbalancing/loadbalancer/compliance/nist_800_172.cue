// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: loadbalancer.#Resource & #3_1_3e

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#3_1_3e: {
	// No clauses extracted — manual review needed
	...
}

