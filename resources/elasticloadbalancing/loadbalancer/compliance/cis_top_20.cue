// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancing/loadbalancer"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: loadbalancer.#Resource & #CIS_6

// Guard rule: ELB_LOGGING_ENABLED
#CIS_6: {
	// No clauses extracted — manual review needed
	...
}

