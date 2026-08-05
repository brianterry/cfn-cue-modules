// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: dbinstance.#Resource & #ctrl_2_9_2 & #ctrl_2_9_3 & #ctrl_2_6 & #ctrl_2_9_4 & #ctrl_2_9_3_2

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_2_9_2: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_2_9_3: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_2_6: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_2_9_4: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_2_9_3_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

