// nist-1800-25 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #nist_1800_25 enforces all nist-1800-25 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nist_1800_25 & { ... }
#nist_1800_25: dbinstance.#Resource & #PR_PT_1 & #PR_IP_3 & #PR_AC_3 & #PR_PT_1_2

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#PR_PT_1: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_DELETION_PROTECTION_ENABLED
#PR_IP_3: {
	Properties: DeletionProtection: _ & !=_|_
	Properties: DeletionProtection: true
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#PR_AC_3: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#PR_PT_1_2: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

