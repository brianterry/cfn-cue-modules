// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: cluster.#Resource & #1405 & #298 & #1271

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#1405: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#298: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#1271: {
	Properties: EnhancedVpcRouting: true
	...
}

