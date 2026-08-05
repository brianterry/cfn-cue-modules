// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/redshift/cluster"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: cluster.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Patch_applications & #Mitigation_strategies_to_prevent_malware_delivery_and_execution

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#Patch_applications: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#Mitigation_strategies_to_prevent_malware_delivery_and_execution: {
	Properties: EnhancedVpcRouting: true
	...
}

