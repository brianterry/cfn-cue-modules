// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: loadbalancer.#Resource & #AC_17 & #CM_2

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#AC_17: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#CM_2: {
	// No clauses extracted — manual review needed
	...
}

