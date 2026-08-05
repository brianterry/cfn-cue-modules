// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nzism & { ... }
#nzism: trail.#Resource & #ctrl_1998 & #ctrl_2082 & #ctrl_2022

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#ctrl_1998: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#ctrl_2082: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#ctrl_2022: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

