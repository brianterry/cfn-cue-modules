// bnm-rmit compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #bnm_rmit enforces all bnm-rmit controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#bnm_rmit & { ... }
#bnm_rmit: dbinstance.#Resource & #ctrl_10_27 & #ctrl_10_66_b & #ctrl_10_53 & #ctrl_10_61 & #ctrl_10_66_b_2

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_10_27: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_10_66_b: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_10_53: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_10_61: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_10_66_b_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

