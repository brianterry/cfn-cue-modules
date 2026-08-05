// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: dbinstance.#Resource & #3_1_4_c_e & #3_3_1_a & #3_1_2_c & #3_1_1_d & #3_3_1_a_2

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#3_1_4_c_e: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#3_3_1_a: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#3_1_2_c: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#3_1_1_d: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#3_3_1_a_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

