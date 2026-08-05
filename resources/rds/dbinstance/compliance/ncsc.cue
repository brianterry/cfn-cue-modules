// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/rds/dbinstance"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#ncsc & { ... }
#ncsc: dbinstance.#Resource & #ctrl_5__Operational_security & #ctrl_11__External_interface_protection & #ctrl_5__Operational_security_2 & #ctrl_2__Asset_protection_and_resilience

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#ctrl_5__Operational_security: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#ctrl_11__External_interface_protection: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#ctrl_5__Operational_security_2: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#ctrl_2__Asset_protection_and_resilience: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

