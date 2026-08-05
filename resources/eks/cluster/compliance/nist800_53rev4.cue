// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: cluster.#Resource & #AC_3

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#AC_3: {
	Properties: PubliclyAccessible: false
	...
}

