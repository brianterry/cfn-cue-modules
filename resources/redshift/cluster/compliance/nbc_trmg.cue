// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: cluster.#Resource & #ctrl_3_1_1_d & #ctrl_3_1_4_c_e & #ctrl_3_1_2_c

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_3_1_1_d: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_3_1_4_c_e: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_3_1_2_c: {
	Properties: EnhancedVpcRouting: true
	...
}

