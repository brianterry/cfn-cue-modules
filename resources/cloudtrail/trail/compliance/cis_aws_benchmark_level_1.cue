// cis-aws-benchmark-level-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #cis_aws_benchmark_level_1 enforces all cis-aws-benchmark-level-1 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#cis_aws_benchmark_level_1 & { ... }
#cis_aws_benchmark_level_1: trail.#Resource & #3_4

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#3_4: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

