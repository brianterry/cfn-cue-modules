// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: cluster.#Resource & #ctrl_1405 & #ctrl_298 & #ctrl_1271

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_1405: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_298: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_1271: {
	Properties: EnhancedVpcRouting: true
	...
}

