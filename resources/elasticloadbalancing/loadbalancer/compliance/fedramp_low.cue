// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: loadbalancer.#Resource & #CP_10 & #AU_2 & #AC_17

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#CP_10: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#AU_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#AC_17: {
	// No clauses extracted — manual review needed
	...
}

