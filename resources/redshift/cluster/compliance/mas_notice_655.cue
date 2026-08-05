// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: cluster.#Resource & #4_2 & #4_4

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#4_2: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#4_4: {
	Properties: EnhancedVpcRouting: true
	...
}

