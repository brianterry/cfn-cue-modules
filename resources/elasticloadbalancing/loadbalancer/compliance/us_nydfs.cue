// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loadbalancer"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: loadbalancer.#Resource & #500_02_a & #500_02_b_3 & #500_02_a_2

// Guard rule: ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED
#500_02_a: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_LOGGING_ENABLED
#500_02_b_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_TLS_HTTPS_LISTENERS_ONLY
#500_02_a_2: {
	// No clauses extracted — manual review needed
	...
}

