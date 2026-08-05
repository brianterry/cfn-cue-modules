// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: trail.#Resource & #67 & #52c

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#67: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#52c: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

