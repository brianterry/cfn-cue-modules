// cis-critical-security-controls-v8-ig3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #cis_critical_security_controls_v8_ig3 enforces all cis-critical-security-controls-v8-ig3 controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#cis_critical_security_controls_v8_ig3 & { ... }
#cis_critical_security_controls_v8_ig3: cluster.#Resource & #3_8 & #4_1 & #12_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#3_8: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#4_1: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#12_2: {
	Properties: EnhancedVpcRouting: true
	...
}

