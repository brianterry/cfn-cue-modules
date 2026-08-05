// cis-critical-security-controls-v8-ig1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cis_critical_security_controls_v8_ig1 enforces all cis-critical-security-controls-v8-ig1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cis_critical_security_controls_v8_ig1 & { ... }
#cis_critical_security_controls_v8_ig1: cluster.#Resource & #3_3

// Guard rule: EMR_KERBEROS_ENABLED
#3_3: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

