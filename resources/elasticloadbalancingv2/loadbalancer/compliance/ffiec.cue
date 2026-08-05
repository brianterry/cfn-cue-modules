// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ffiec & { ... }
#ffiec: loadbalancer.#Resource & #D5_IR_Pl_B_6

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#D5_IR_Pl_B_6: {
	// No clauses extracted — manual review needed
	...
}

