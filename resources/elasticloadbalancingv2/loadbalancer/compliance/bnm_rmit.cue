// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: loadbalancer.#Resource & #10_18 & #10_34

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#10_18: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#10_34: {
	// No clauses extracted — manual review needed
	...
}

