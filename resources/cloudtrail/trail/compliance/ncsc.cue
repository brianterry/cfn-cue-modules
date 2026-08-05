// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#ncsc & { ... }
#ncsc: trail.#Resource & #5__Operational_security & #2__Asset_protection_and_resilience & #13__Audit_information_for_users

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#5__Operational_security: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#2__Asset_protection_and_resilience: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#13__Audit_information_for_users: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

