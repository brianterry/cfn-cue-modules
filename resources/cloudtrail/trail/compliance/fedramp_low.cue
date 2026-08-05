// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: trail.#Resource & #AC_2 & #AC_2_2 & #AU_9 & #AU_9_2 & #AC_2_3

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#AC_2: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENABLED
#AC_2_2: {
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
#AU_9_2: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

// Guard rule: MULTI_REGION_CLOUD_TRAIL_ENABLED
#AC_2_3: {
	Properties: IsMultiRegionTrail: _ & !=_|_
	Properties: IsMultiRegionTrail: true
	...
}

