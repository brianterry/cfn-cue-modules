// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: loadbalancer.#Resource & #2_7 & #2_9_3

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#2_7: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#2_9_3: {
	// No clauses extracted — manual review needed
	...
}

