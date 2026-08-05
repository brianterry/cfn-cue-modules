// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: loadbalancer.#Resource & #3_1_2_c & #3_3_1_a

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#3_1_2_c: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#3_3_1_a: {
	// No clauses extracted — manual review needed
	...
}

