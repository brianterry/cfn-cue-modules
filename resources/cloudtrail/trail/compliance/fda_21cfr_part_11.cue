// FDA-21CFR-Part-11 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #FDA_21CFR_Part_11 enforces all FDA-21CFR-Part-11 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#FDA_21CFR_Part_11 & { ... }
#FDA_21CFR_Part_11: trail.#Resource & #11_10_e & #11_10_c & #11_10_a

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#11_10_e: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#11_10_c: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#11_10_a: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

