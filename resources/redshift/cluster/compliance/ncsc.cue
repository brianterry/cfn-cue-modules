// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#ncsc & { ... }
#ncsc: cluster.#Resource & #2__Asset_protection_and_resilience & #5__Operational_security & #11__External_interface_protection

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#2__Asset_protection_and_resilience: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#5__Operational_security: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#11__External_interface_protection: {
	Properties: EnhancedVpcRouting: true
	...
}

