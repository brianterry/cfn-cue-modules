// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/emr/cluster"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: cluster.#Resource & #AC_2_j

// Guard rule: EMR_KERBEROS_ENABLED
#AC_2_j: {
	Properties: KerberosAttributes: _ & !=_|_
	...
}

