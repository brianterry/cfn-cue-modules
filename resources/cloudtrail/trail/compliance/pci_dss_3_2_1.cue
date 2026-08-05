// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: trail.#Resource & #2_2 & #10_1 & #2_2_2 & #2_2_3 & #2_2_4

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#2_2: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENABLED
#10_1: {
	Properties: IsLogging: _ & !=_|_
	Properties: IsLogging: true
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#2_2_2: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#2_2_3: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

// Guard rule: MULTI_REGION_CLOUD_TRAIL_ENABLED
#2_2_4: {
	Properties: IsMultiRegionTrail: _ & !=_|_
	Properties: IsMultiRegionTrail: true
	...
}

