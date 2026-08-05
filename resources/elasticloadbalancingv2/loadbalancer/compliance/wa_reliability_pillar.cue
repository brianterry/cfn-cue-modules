// wa-Reliability-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #wa_Reliability_Pillar enforces all wa-Reliability-Pillar controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#wa_Reliability_Pillar & { ... }
#wa_Reliability_Pillar: loadbalancer.#Resource & #REL_10

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#REL_10: {
	// No clauses extracted — manual review needed
	...
}

