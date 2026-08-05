// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: loadbalancer.#Resource & #SEC_9_3

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#SEC_9_3: {
	// No clauses extracted — manual review needed
	...
}

