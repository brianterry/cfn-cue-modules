// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/trail"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: trail.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: trail.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2 & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3

// Guard rule: CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: CloudWatchLogsLogGroupArn: _ & !=_|_
	...
}

// Guard rule: CLOUD_TRAIL_ENCRYPTION_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_2: {
	Properties: KMSKeyId: _ & !=_|_
	Properties: KMSKeyId: string
	...
}

// Guard rule: CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents_3: {
	Properties: EnableLogFileValidation: _ & !=_|_
	Properties: EnableLogFileValidation: true
	...
}

