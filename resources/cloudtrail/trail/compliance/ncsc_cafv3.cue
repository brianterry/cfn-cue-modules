// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: trail.#Resource & #C1_a_Monitoring_Coverage & #B3_c_Stored_Data

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#C1_a_Monitoring_Coverage: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#B3_c_Stored_Data: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

