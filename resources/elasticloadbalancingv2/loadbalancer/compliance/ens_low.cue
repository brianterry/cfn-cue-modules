// ens-low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #ens_low enforces all ens-low controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ens_low & { ... }
#ens_low: loadbalancer.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#Anexo_II_4_1_2_a;_b;_c: {
	// No clauses extracted — manual review needed
	...
}

