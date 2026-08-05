// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: dbinstance.#Resource & #ctrl_3_13_2 & #ctrl_3_1_1 & #ctrl_3_1_12 & #ctrl_3_13_2_2

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_3_13_2: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_3_1_1: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_3_1_12: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_3_13_2_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

