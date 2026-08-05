// ens-high compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #ens_high enforces all ens-high controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#ens_high & { ... }
#ens_high: loadbalancer.#Resource & #Anexo_II_4_1_2_a;_b;_c

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#Anexo_II_4_1_2_a;_b;_c: {
	// No clauses extracted — manual review needed
	...
}

