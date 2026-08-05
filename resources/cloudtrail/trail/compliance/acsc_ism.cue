// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: trail.#Resource & #1405 & #459 & #586

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#1405: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#459: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#586: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

