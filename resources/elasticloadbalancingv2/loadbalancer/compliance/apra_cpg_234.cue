// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: loadbalancer.#Resource & #ctrl_36l

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#ctrl_36l: {
	// No clauses extracted — manual review needed
	...
}

