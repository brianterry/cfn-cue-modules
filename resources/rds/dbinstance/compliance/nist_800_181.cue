// nist-800-181 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #nist_800_181 enforces all nist-800-181 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nist_800_181 & { ... }
#nist_800_181: dbinstance.#Resource & #T0086 & #T0152 & #T0017 & #T0017_2 & #T0152_2 & #T0008

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#T0086: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#T0152: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#T0017: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#T0017_2: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#T0152_2: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#T0008: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

