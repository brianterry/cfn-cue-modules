// ABS-CCIGv2-Material compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #ABS_CCIGv2_Material enforces all ABS-CCIGv2-Material controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ABS_CCIGv2_Material & { ... }
#ABS_CCIGv2_Material: trail.#Resource & #section4a_govern_the_cloud_2_standard_workloads & #section4b_design_and_secure_the_cloud_6_standard_workloads & #section4b_design_and_secure_the_cloud_14_standard_workloads

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#section4a_govern_the_cloud_2_standard_workloads: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#section4b_design_and_secure_the_cloud_6_standard_workloads: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#section4b_design_and_secure_the_cloud_14_standard_workloads: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

