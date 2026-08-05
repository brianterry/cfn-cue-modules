// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: loadbalancer.#Resource & #PR_IP_3

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#PR_IP_3: {
	// No clauses extracted — manual review needed
	...
}

