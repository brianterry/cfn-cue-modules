// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: loadbalancer.#Resource & #ctrl_3_1_i & #ctrl_4_4_h

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#ctrl_3_1_i: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#ctrl_4_4_h: {
	// No clauses extracted — manual review needed
	...
}

