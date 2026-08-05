// cis-aws-benchmark-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #cis_aws_benchmark_level_2 enforces all cis-aws-benchmark-level-2 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cis_aws_benchmark_level_2 & { ... }
#cis_aws_benchmark_level_2: trail.#Resource & #ctrl_3_4 & #ctrl_3_7 & #ctrl_3_2

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#ctrl_3_4: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#ctrl_3_7: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#ctrl_3_2: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

