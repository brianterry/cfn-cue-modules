// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: loadbalancer.#Resource & #CA_7_4_c

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#CA_7_4_c: {
	// No clauses extracted — manual review needed
	...
}

