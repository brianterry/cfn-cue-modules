// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: dbinstance.#Resource & #CA_7_a_b & #SC_5 & #AC_4 & #AC_2_4 & #CP_10

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#CA_7_a_b: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#SC_5: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#AC_4: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#AC_2_4: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#CP_10: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

