// K-ISMS compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #K_ISMS enforces all K-ISMS controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#K_ISMS & { ... }
#K_ISMS: trail.#Resource & #ctrl_2_3_3 & #ctrl_2_7 & #ctrl_2_9_1

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#ctrl_2_3_3: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#ctrl_2_7: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#ctrl_2_9_1: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

