// NIST800-53Rev5 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #NIST800_53Rev5 enforces all NIST800-53Rev5 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#NIST800_53Rev5 & { ... }
#NIST800_53Rev5: dbinstance.#Resource & #AU_12_3 & #CA_7_4_c & #AC_2_6 & #AC_2_4 & #CP_1a_1_b

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#AU_12_3: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#CA_7_4_c: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#AC_2_6: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#AC_2_4: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#CP_1a_1_b: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

