// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: cluster.#Resource & #3_4_2e & #3_1_3e

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#3_4_2e: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#3_1_3e: {
	Properties: EnhancedVpcRouting: true
	...
}

