// nbc-trmg compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #nbc_trmg enforces all nbc-trmg controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nbc_trmg & { ... }
#nbc_trmg: trail.#Resource & #3_1_1_d & #3_1_10_b

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#3_1_1_d: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#3_1_10_b: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

