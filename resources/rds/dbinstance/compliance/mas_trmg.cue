// mas-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #mas_trmg enforces all mas-trmg controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#mas_trmg & { ... }
#mas_trmg: dbinstance.#Resource & #ctrl_7_4_1 & #ctrl_6_4_8 & #ctrl_11_1_1__b & #ctrl_6_4_6 & #ctrl_6_4_8_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#ctrl_7_4_1: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_6_4_8: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_11_1_1__b: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_6_4_6: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_6_4_8_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

