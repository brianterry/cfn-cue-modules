// cmmc-level-4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #cmmc_level_4 enforces all cmmc-level-4 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cmmc_level_4 & { ... }
#cmmc_level_4: trail.#Resource & #AC_2_013 & #AU_3_049 & #AU_3_049_2

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#AC_2_013: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#AU_3_049: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#AU_3_049_2: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

