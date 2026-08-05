// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#ncsc & { ... }
#ncsc: loggroup.#Resource & #ctrl_5__Operational_security & #ctrl_2__Asset_protection_and_resilience & #ctrl_5__Operational_security_2

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#ctrl_5__Operational_security: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_2__Asset_protection_and_resilience: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_5__Operational_security_2: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

