// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cloudtrail/trail"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: trail.#Resource & #164_308_a_3_ii_A & #164_312_a_2_iv & #164_312_c_1

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#164_308_a_3_ii_A: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#164_312_a_2_iv: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#164_312_c_1: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

