// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: loadbalancer.#Resource & #ctrl_11_10_a

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#ctrl_11_10_a: {
	// No clauses extracted — manual review needed
	...
}

