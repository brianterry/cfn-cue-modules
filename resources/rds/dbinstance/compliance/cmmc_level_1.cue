// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: dbinstance.#Resource & #AC_1_001 & #IA_1_076

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#AC_1_001: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#IA_1_076: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

