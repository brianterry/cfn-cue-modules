// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: dbinstance.#Resource & #ctrl_164_308_a_5_ii_A & #ctrl_164_312_b & #ctrl_164_308_a_7_i & #ctrl_164_308_a_3_i & #ctrl_164_308_a_3_ii_A & #ctrl_164_308_a_7_i_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#ctrl_164_308_a_5_ii_A: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_164_312_b: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_164_308_a_7_i: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_164_308_a_3_i: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_164_308_a_3_ii_A: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_164_308_a_7_i_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

