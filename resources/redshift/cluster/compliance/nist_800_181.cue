// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: cluster.#Resource & #T0017 & #T0065 & #T0144

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#T0017: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#T0065: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#T0144: {
	Properties: EnhancedVpcRouting: true
	...
}

