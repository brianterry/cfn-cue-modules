// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: dbinstance.#Resource & #ctrl_3_4_2e & #ctrl_3_14_2e & #ctrl_3_1_3e

// Guard rule: RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED
#ctrl_3_4_2e: {
	Properties: AutoMinorVersionUpgrade: _ & !=_|_
	Properties: AutoMinorVersionUpgrade: true
	...
}

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_3_14_2e: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_3_1_3e: {
	Properties: PubliclyAccessible: false
	...
}

