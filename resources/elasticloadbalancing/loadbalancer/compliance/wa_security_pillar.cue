// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: loadbalancer.#Resource & #SEC_4_2 & #SEC_9_3

// Guard rule: ELB_LOGGING_ENABLED
#SEC_4_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#SEC_9_3: {
	// No clauses extracted — manual review needed
	...
}

