// nist-800-171 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/logs/loggroup"

// #nist_800_171 enforces all nist-800-171 controls for this resource.
// Unify with #Resource: myResource: loggroup.#Resource & compliance.#nist_800_171 & { ... }
#nist_800_171: loggroup.#Resource & #ctrl_3_6_1 & #ctrl_3_13_16 & #ctrl_3_3_1

// Guard rule: CLOUDWATCH_ALARM_ACTION_CHECK
#ctrl_3_6_1: {
	Properties: AlarmActions: _ & !=_|_
	Properties: OKActions: _ & !=_|_
	Properties: InsufficientDataActions: _ & !=_|_
	...
}

// Guard rule: CLOUDWATCH_LOG_GROUP_ENCRYPTED
#ctrl_3_13_16: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: CW_LOGGROUP_RETENTION_PERIOD_CHECK
#ctrl_3_3_1: {
	Properties: RetentionInDays: 1 | 3 | 5 | 7 | 14 | 30 | 60 | 90 | 120 | 150 | 180 | 365 | 400 | 545 | 731 | 1827 | 3653
	...
}

