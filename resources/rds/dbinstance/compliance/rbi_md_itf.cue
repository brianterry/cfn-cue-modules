// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: dbinstance.#Resource & #3_3 & #4_4_h & #4_4_h_2 & #8_I & #3_1_h & #4_4_h_3

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#3_3: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#4_4_h: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#4_4_h_2: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#8_I: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#3_1_h: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#4_4_h_3: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

