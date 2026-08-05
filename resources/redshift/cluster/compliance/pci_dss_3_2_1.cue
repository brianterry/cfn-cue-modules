// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: cluster.#Resource & #3_4 & #6_2 & #1_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#3_4: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#6_2: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#1_2: {
	Properties: EnhancedVpcRouting: true
	...
}

