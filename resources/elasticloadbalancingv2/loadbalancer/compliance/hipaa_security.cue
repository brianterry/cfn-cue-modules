// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/elasticloadbalancingv2/loadbalancer"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: loadbalancer.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: loadbalancer.#Resource & #164_312_a_2_iv & #164_308_a_7_i

// Guard rule: ALB_HTTP_DROP_INVALID_HEADER_ENABLED
#164_312_a_2_iv: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: ELB_DELETION_PROTECTION_ENABLED
#164_308_a_7_i: {
	// No clauses extracted — manual review needed
	...
}

