// cmmc-level-2 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #cmmc_level_2 enforces all cmmc-level-2 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cmmc_level_2 & { ... }
#cmmc_level_2: trail.#Resource & #AC_2_013 & #CM_2_064

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#AC_2_013: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#CM_2_064: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

