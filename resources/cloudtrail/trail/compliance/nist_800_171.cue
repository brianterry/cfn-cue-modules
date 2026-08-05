// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: trail.#Resource & #3_3_1 & #3_13_16 & #3_3_8

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#3_3_1: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#3_13_16: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#3_3_8: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

