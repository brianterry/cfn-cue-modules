// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: loadbalancer.#Resource & #Your_Systems_3

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#Your_Systems_3: {
	// No clauses extracted — manual review needed
	...
}

