// cmmc-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #cmmc_level_1 enforces all cmmc-level-1 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cmmc_level_1 & { ... }
#cmmc_level_1: trail.#Resource & #IA_1_076

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#IA_1_076: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

