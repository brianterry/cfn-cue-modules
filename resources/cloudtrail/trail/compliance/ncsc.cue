// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ncsc & { ... }
#ncsc: trail.#Resource & #ctrl_5__Operational_security & #ctrl_2__Asset_protection_and_resilience & #ctrl_13__Audit_information_for_users

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#ctrl_5__Operational_security: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#ctrl_2__Asset_protection_and_resilience: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#ctrl_13__Audit_information_for_users: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

