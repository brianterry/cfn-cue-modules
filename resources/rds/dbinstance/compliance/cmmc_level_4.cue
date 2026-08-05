// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: dbinstance.#Resource & #CM_2_064 & #SC_3_180 & #AC_1_001 & #AC_3_018 & #SC_3_180_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#CM_2_064: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#SC_3_180: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#AC_1_001: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#AC_3_018: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#SC_3_180_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

