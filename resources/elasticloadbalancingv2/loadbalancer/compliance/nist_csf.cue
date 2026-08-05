// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#nist_csf & { ... }
#nist_csf: loadbalancer.#Resource & #ID_BE_5

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#ID_BE_5: {
	// No clauses extracted — manual review needed
	...
}

