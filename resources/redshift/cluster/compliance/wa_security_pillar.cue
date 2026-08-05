// wa-Security-Pillar compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #wa_Security_Pillar enforces all wa-Security-Pillar controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#wa_Security_Pillar & { ... }
#wa_Security_Pillar: cluster.#Resource & #SEC_4_2 & #SEC_6_3 & #SEC_5_2

// Guard rule: REDSHIFT_CLUSTER_CONFIGURATION_CHECK
#SEC_4_2: {
	Properties: Encrypted: true
	...
}

// Guard rule: REDSHIFT_CLUSTER_MAINTENANCESETTINGS_CHECK
#SEC_6_3: {
	Properties: PreferredMaintenanceWindow: _ & !=_|_
	Properties: AllowVersionUpgrade: true
	Properties: AutomatedSnapshotRetentionPeriod: >0
	...
}

// Guard rule: REDSHIFT_ENHANCED_VPC_ROUTING_ENABLED
#SEC_5_2: {
	Properties: EnhancedVpcRouting: true
	...
}

