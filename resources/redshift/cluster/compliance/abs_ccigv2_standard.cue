// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: cluster.#Resource & #section4b_design_and_secure_the_cloud_6_standard_workloads & #section4b_design_and_secure_the_cloud_2_standard_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#section4b_design_and_secure_the_cloud_2_standard_workloads: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: EnhancedVpcRouting: true
	...
}

