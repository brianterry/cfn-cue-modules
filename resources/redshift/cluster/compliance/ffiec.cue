// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ffiec & { ... }
#ffiec: cluster.#Resource & #D2_MA_Ma_B_1 & #D3_CC_PM_B_1 & #D3_PC_Im_B_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#D2_MA_Ma_B_1: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#D3_CC_PM_B_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#D3_PC_Im_B_1: {
	Properties: EnhancedVpcRouting: true
	...
}

