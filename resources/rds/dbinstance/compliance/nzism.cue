// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nzism & { ... }
#nzism: dbinstance.#Resource & #ctrl_4849 & #ctrl_3548 & #ctrl_2013 & #ctrl_4829

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_4849: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_3548: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_2013: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_4829: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

