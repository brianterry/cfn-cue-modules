// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: loadbalancer.#Resource & #CP_10 & #AU_2_a_d & #AC_17_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#CP_10: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#AU_2_a_d: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#AC_17_2: {
	// No clauses extracted — manual review needed
	...
}

