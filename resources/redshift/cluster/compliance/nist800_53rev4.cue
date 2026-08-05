// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: cluster.#Resource & #AC_2_4

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#AC_2_4: {
	Properties: Encrypted: true
	...
}

