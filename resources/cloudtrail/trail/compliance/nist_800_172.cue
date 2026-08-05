// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: trail.#Resource & #3_14_2e & #3_14_1e

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#3_14_2e: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#3_14_1e: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

