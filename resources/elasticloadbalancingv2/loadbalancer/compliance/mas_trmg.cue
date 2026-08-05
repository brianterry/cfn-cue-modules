// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: loadbalancer.#Resource & #6_4_8

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#6_4_8: {
	// No clauses extracted — manual review needed
	...
}

