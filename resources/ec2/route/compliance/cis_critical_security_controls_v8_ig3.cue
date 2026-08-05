// cis-critical-security-controls-v8-ig3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/route"

// #cis_critical_security_controls_v8_ig3 enforces all cis-critical-security-controls-v8-ig3 controls for this resource.
// Unify with #Resource: myResource: route.#Resource & compliance.#cis_critical_security_controls_v8_ig3 & { ... }
#cis_critical_security_controls_v8_ig3: route.#Resource & #3_8

// Guard rule: NO_UNRESTRICTED_ROUTE_TO_IGW
#3_8: {
	// No clauses extracted — manual review needed
	...
}

