// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ffiec & { ... }
#ffiec: trail.#Resource & #D2_IS_Is_B_1

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#D2_IS_Is_B_1: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

