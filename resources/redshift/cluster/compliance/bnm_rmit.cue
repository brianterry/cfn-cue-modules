// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: cluster.#Resource & #10_18 & #10_63 & #10_53

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#10_18: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#10_63: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#10_53: {
	Properties: EnhancedVpcRouting: true
	...
}

