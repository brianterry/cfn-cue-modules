// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: dbinstance.#Resource & #C1_a_Monitoring_Coverage & #B3_c_Stored_Data & #B3_b_Data_in_Transit & #C1_c_Generating_Alerts & #B4_a_Secure_by_Design

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#C1_a_Monitoring_Coverage: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#B3_c_Stored_Data: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#B3_b_Data_in_Transit: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#C1_c_Generating_Alerts: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#B4_a_Secure_by_Design: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

