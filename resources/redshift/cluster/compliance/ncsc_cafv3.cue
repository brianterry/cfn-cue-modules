// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: cluster.#Resource & #B2_d Identity and_Access_Management__IdAM & #B4_b Secure Configuration & #B3_b Data in Transit

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#B2_d Identity and_Access_Management__IdAM: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#B4_b Secure Configuration: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#B3_b Data in Transit: {
	Properties: EnhancedVpcRouting: true
	...
}

