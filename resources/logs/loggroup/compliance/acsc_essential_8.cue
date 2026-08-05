// acsc-essential-8 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/loggroup"

// #acsc_essential_8 enforces all acsc-essential-8 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#acsc_essential_8 & { ... }
#acsc_essential_8: loggroup.#Resource & #Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents & #Mitigation_strategies_to_recover_data_and_system_availability

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#Mitigation_strategies_to_limit_the_extent_of_cyber_security_incidents: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#Mitigation_strategies_to_recover_data_and_system_availability: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

