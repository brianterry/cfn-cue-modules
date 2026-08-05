// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#ffiec & { ... }
#ffiec: dbinstance.#Resource & #D3_CC_PM_B_1 & #D5_IR_Pl_B_6 & #D5_IR_Pl_B_6_2 & #D3_PC_Im_B_1 & #D2_MA_Ma_B_1 & #D1_G_RM_Rm_1

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#D3_CC_PM_B_1: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#D5_IR_Pl_B_6: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#D5_IR_Pl_B_6_2: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#D3_PC_Im_B_1: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#D2_MA_Ma_B_1: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#D1_G_RM_Rm_1: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

