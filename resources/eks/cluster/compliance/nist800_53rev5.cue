// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: cluster.#Resource & #AC_2_6

// Guard rule: REDSHIFT_CLUSTER_PUBLIC_ACCESS_CHECK
#AC_2_6: {
	Properties: PubliclyAccessible: false
	...
}

