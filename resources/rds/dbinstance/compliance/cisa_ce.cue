// cisa-ce compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #cisa_ce enforces all cisa-ce controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#cisa_ce & { ... }
#cisa_ce: dbinstance.#Resource & #Your_Systems_2 & #Your_Systems_3 & #Your_Systems_3_2 & #Your_Systems_3_3 & #Your_Systems_3_4 & #Your_Systems_3_5

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#Your_Systems_2: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#Your_Systems_3: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#Your_Systems_3_2: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#Your_Systems_3_3: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#Your_Systems_3_4: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#Your_Systems_3_5: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

