// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: trail.#Resource & #CIS_6 & #CIS_13 & #CIS_6_2

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#CIS_6: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#CIS_13: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#CIS_6_2: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

