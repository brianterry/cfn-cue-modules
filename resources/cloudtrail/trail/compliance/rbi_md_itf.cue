// rbi-md-itf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #rbi_md_itf enforces all rbi-md-itf controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#rbi_md_itf & { ... }
#rbi_md_itf: trail.#Resource & #3_1_h

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#3_1_h: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

