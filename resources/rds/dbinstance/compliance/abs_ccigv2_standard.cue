// ABS-CCIGv2-Standard compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/dbinstance"

// #ABS_CCIGv2_Standard enforces all ABS-CCIGv2-Standard controls for this resource.
// Unify with #Resource: myResource: dbinstance.#Resource & compliance.#ABS_CCIGv2_Standard & { ... }
#ABS_CCIGv2_Standard: dbinstance.#Resource & #section4b_design_and_secure_the_cloud_3_standard_workloads & #section4b_design_and_secure_the_cloud_1_standard_workloads & #section4b_design_and_secure_the_cloud_14_standard_workloads & #section4b_design_and_secure_the_cloud_3_standard_workloads_2

// Guard rule: RDS_ENHANCED_MONITORING_ENABLED
#section4b_design_and_secure_the_cloud_3_standard_workloads: {
	Properties: MonitoringInterval: _ & !=_|_
	Properties: MonitoringInterval: 1 | 5 | 10 | 15 | 30 | 60
	...
}

// Guard rule: RDS_INSTANCE_PUBLIC_ACCESS_CHECK
#section4b_design_and_secure_the_cloud_1_standard_workloads: {
	Properties: PubliclyAccessible: false
	...
}

// Guard rule: RDS_INSTANCE_LOGGING_ENABLED
#section4b_design_and_secure_the_cloud_14_standard_workloads: {
	Properties: EnableCloudwatchLogsExports: _ & !=_|_
	...
}

// Guard rule: RDS_MULTI_AZ_SUPPORT
#section4b_design_and_secure_the_cloud_3_standard_workloads_2: {
	Properties: MultiAZ: _ & !=_|_
	Properties: MultiAZ: true
	...
}

