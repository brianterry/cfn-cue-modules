// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: loadbalancer.#Resource & #AC_17_2 & #CM_2

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#AC_17_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#CM_2: {
	// No clauses extracted — manual review needed
	...
}

