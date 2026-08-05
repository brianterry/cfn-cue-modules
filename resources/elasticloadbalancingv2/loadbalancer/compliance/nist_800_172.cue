// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: loadbalancer.#Resource & #3_1_3e

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#3_1_3e: {
	// No clauses extracted — manual review needed
	...
}

