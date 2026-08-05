// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc & { ... }
#ncsc: cluster.#Resource & #ctrl_2__Asset_protection_and_resilience & #ctrl_5__Operational_security & #ctrl_11__External_interface_protection

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#ctrl_2__Asset_protection_and_resilience: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#ctrl_5__Operational_security: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#ctrl_11__External_interface_protection: {
	Properties: EnhancedVpcRouting: true
	...
}

