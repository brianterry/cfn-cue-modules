// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: cluster.#Resource & #AC_2_4 & #CM_2b & #AC_4_21

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#AC_2_4: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#CM_2b: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#AC_4_21: {
	Properties: EnhancedVpcRouting: true
	...
}

