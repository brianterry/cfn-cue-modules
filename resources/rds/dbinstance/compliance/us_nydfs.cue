// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: dbinstance.#Resource & #ctrl_500_02_b_3 & #ctrl_500_02_a & #ctrl_500_02_b_2 & #ctrl_500_02_b_3_2 & #ctrl_500_02_a_2

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_500_02_b_3: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#ctrl_500_02_a: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_500_02_b_2: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_500_02_b_3_2: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_500_02_a_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

