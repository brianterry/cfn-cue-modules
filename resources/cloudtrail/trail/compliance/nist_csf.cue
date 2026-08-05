// nist-csf compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #nist_csf enforces all nist-csf controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#nist_csf & { ... }
#nist_csf: trail.#Resource & #DE_AE_1 & #PR_DS_1 & #PR_DS_6

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#DE_AE_1: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#PR_DS_1: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#PR_DS_6: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

