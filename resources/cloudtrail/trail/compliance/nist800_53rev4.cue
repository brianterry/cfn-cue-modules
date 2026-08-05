// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: trail.#Resource & #AC_2_4 & #AC_2_4_2 & #AU_9 & #SI_7 & #AC_2_4_3

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#AC_2_4: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENABLED
#AC_2_4_2: {
	Properties: IsLogging: _ & !=_|_
	Properties: IsLogging: true
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#AU_9: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#SI_7: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

// Guard rule: MULTI_REGION_CLOUD_TRAIL_ENABLED
#AC_2_4_3: {
	Properties: IsMultiRegionTrail: _ & !=_|_
	Properties: IsMultiRegionTrail: true
	...
}

