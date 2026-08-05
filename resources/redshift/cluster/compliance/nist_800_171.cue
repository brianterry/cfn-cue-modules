// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: cluster.#Resource & #ctrl_3_3_1 & #ctrl_3_14_3 & #ctrl_3_1_1

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_3_3_1: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_3_14_3: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_3_1_1: {
	Properties: EnhancedVpcRouting: true
	...
}

