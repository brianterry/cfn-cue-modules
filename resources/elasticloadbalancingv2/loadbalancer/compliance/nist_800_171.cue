// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: loadbalancer.#Resource & #3_13_2

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#3_13_2: {
	// No clauses extracted — manual review needed
	...
}

